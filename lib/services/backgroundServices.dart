import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ibadahku_mobile/services/sholatServices.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:shared_preferences/shared_preferences.dart';

void startBackgroundService() {
  final service = FlutterBackgroundService();
  service.startService();
}

void stopBackgroundService() {
  final service = FlutterBackgroundService();
  service.invoke("stop");
}

Future<void> initializeService() async {
  final service = FlutterBackgroundService();

  await service.configure(
    iosConfiguration: IosConfiguration(
      autoStart: true,
      onForeground: onStart,
      onBackground: onIosBackground,
    ),
    androidConfiguration: AndroidConfiguration(
      autoStart: true,
      onStart: onStart,
      isForegroundMode: false,
      autoStartOnBoot: true,
    ),
  );
}

@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  return true;
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  TimeOfDay jadwal = TimeOfDay(hour: 0, minute: 0); // jadwal jam 12 malam

  if (service is AndroidServiceInstance) {
    service.on('setAsForeground').listen((event) {
      service.setAsForegroundService();
    });

    service.on('setAsBackground').listen((event) {
      service.setAsBackgroundService();
    });
  }

  service.on('stopService').listen((event) {
    service.stopSelf();
  });

  Timer.periodic(const Duration(minutes: 1), (timer) async {
    TimeOfDay now = TimeOfDay.now();
    if (isTimeEqualOrAfter(jadwal, now)) {
      print("Sudah jam 12 malam! Menjalankan fungsi...");
      await JadwalSholat()
          .getJadwalSholat(); // Menjalankan fungsi yang dijadwalkan
    }
  });

  Timer.periodic(const Duration(minutes: 1), (timer) async {
    print(11);
    if (service is AndroidServiceInstance) {
      print(1);

      print(2);
      final String? jadwal = await prefs.getString('jadwalSholatCached');
      print(jadwal);
      if (jadwal != "" || jadwal != null) {
        dynamic parsedJsonJadwal = jsonDecode(jadwal!);
        final now = TimeOfDay.now();

        List<dynamic> nextPray =
            JadwalSholat().getNextPrayerTime(parsedJsonJadwal);
        String namaWaktu = nextPray[0];
        TimeOfDay waktu = nextPray[1];

        int jadwalSholatInMinutes = convertTimeOfDayToMinutes(waktu);
        int nowInMinutes = convertTimeOfDayToMinutes(now);

        print(namaWaktu);
        print(jadwalSholatInMinutes);
        print(nowInMinutes);
        print(waktu);

        // flutterLocalNotificationsPlugin.show(
        //   3,
        //   'Ibdahku',
        //   'Sudah Waktunya Sholat ${namaWaktu}',
        //   const NotificationDetails(
        //     android: AndroidNotificationDetails(
        //         "chanel id 6"
        //             'my_foreground',
        //         'MY FOREGROUND SERVICE',
        //         icon: 'ic_bg_service_small',
        //         ongoing: true,
        //         playSound: true,
        //         priority: Priority.high,
        //         importance: Importance.max,
        //         sound: RawResourceAndroidNotificationSound("adzan_mekkah")),
        //   ),
        // );

        // final _playlist = ConcatenatingAudioSource(children: [
        //   AudioSource.asset(
        //     "assets/adzan_mekkah.mp3",
        //     tag: MediaItem(
        //       id: '1',
        //       title: "Adzan",
        //     ),
        //   )
        // ]);

        // final player = AudioPlayer(); // Create a player
        // await player.setAudioSource(// Load a URL
        //     _playlist);

        // player.play();
        // final player = AudioPlayer();
        // await player.play(AssetSource("adzan_mekkah.mp3"));

        if (nowInMinutes >= jadwalSholatInMinutes &&
            nowInMinutes <= jadwalSholatInMinutes + 1) {
          /// OPTIONAL for use custom notification
          /// the notification id must be equals with AndroidConfiguration when you call configure() method.
          flutterLocalNotificationsPlugin.show(
            888,
            'Ibdahku',
            'Sudah Waktunya Sholat ${namaWaktu}',
            const NotificationDetails(
              android: AndroidNotificationDetails(
                'my_foreground',
                'MY FOREGROUND SERVICE',
                icon: 'ic_bg_service_small',
                ongoing: true,
              ),
            ),
          );
        } else {
          print(false);
        }
      }

      // if you don't using custom notification, uncomment this
      // service.setForegroundNotificationInfo(
      //   title: "My App Service",
      //   content: "Updated at ${DateTime.now()}",
      // );
    }
  });

  /// you can see this log in logcat
  print('FLUTTER BACKGROUND SERVICE: ${DateTime.now()}');

  // test using external plugin
  final deviceInfo = DeviceInfoPlugin();
  String? device;
  if (Platform.isAndroid) {
    final androidInfo = await deviceInfo.androidInfo;
    device = androidInfo.model;
  } else if (Platform.isIOS) {
    final iosInfo = await deviceInfo.iosInfo;
    device = iosInfo.model;
  }

  service.invoke(
    'update',
    {
      "current_date": DateTime.now().toIso8601String(),
      "device": device,
    },
  );
}

int convertTimeOfDayToMinutes(TimeOfDay time) {
  return time.hour * 60 + time.minute;
}

// Fungsi untuk membandingkan apakah waktu sekarang sudah mencapai atau lebih dari jadwal
bool isTimeEqualOrAfter(TimeOfDay jadwal, TimeOfDay now) {
  final int jadwalInMinutes = convertTimeOfDayToMinutes(jadwal);
  final int nowInMinutes = convertTimeOfDayToMinutes(now);
  return nowInMinutes >= jadwalInMinutes;
}
