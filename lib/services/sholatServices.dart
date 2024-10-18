import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JadwalSholat {
  final dio = Dio();

  String formattedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());

  Future<Position> getPermisionLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future getJadwalSholat() async {
    Position myLocation = await getPermisionLocation();
    DateTime now = DateTime.now();
    dynamic timeZoneName = now.timeZoneName;
    print(myLocation);
    print(timeZoneName);
    print(formattedDate);
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      final response = await dio.get(
        'http://api.aladhan.com/v1/timings/${formattedDate}?latitude=${myLocation.latitude}&longitude=${myLocation.longitude}&method=20',
      );
      //print(response.data["data"]);
      String newDataString = jsonEncode(response.data["data"]["timings"]);
      //print(newDataString);
      await prefs.setString('jadwalSholatCached', newDataString);

      //await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);

      return response.data;
    } catch (e) {
      print(e.toString());
    }
  }

  List<dynamic> getNextPrayerTime(dynamic prayerTimes) {
    // Waktu saat ini
    final now = TimeOfDay.now();

    // List untuk menyimpan nama dan waktu salat dalam format TimeOfDay
    List<dynamic> timesList = prayerTimes.entries.map((entry) {
      final timeParts = entry.value.split(':');
      final timeOfDay = TimeOfDay(
        hour: int.parse(timeParts[0]),
        minute: int.parse(timeParts[1]),
      );
      return {
        'name': entry.key,
        'time': timeOfDay,
      };
    }).toList();

    // Hanya ambil jadwal utama (tanpa waktu tambahan seperti Firstthird, Lastthird, dll)
    List<dynamic> mainPrayerTimes = timesList.where((time) {
      return ['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'].contains(time['name']);
    }).toList();

    // Cari waktu salat selanjutnya berdasarkan waktu saat ini
    for (var time in mainPrayerTimes) {
      if (_isTimeAfter(now, time['time'])) {
        // Kembalikan nama dan waktu dalam bentuk list
        return [time['name'], time['time']];
      }
    }

    // Jika sudah melewati semua waktu, kembali ke Fajr
    return [mainPrayerTimes[0]['name'], mainPrayerTimes[0]['time']];
  }

  bool _isTimeAfter(TimeOfDay now, TimeOfDay prayerTime) {
    return now.hour < prayerTime.hour ||
        (now.hour == prayerTime.hour && now.minute < prayerTime.minute);
  }
}
