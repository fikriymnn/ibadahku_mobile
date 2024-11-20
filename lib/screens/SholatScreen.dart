import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/services/sholatServices.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

import '../widgets/customAppBar.dart';

class SholatScreen extends StatefulWidget {
  const SholatScreen({super.key});

  @override
  State<SholatScreen> createState() => _SholatScreenState();
}

class _SholatScreenState extends State<SholatScreen> {
  bool _loading = true;
  @override
  void initState() {
    _checkPermission();
    super.initState();
  }

  getJadwal() async {
    dynamic jadwalSholat = await JadwalSholat().getJadwalSholat();
    return jadwalSholat;
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

  Future<void> _checkPermission() async {
    final status = await Permission.locationWhenInUse.status;
    if (status.isDenied) {
      await Permission.locationWhenInUse.request();
    }
  }

  void _showLocationPermissionDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Izin Lokasi Dibutuhkan"),
          content: Text(
              "Aplikasi ini membutuhkan akses lokasi untuk menentukan arah kiblat. Harap aktifkan izin lokasi."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Menutup dialog
              },
              child: Text("Tutup"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(context); // Menutup dialog
                await openAppSettings(); // Membuka pengaturan aplikasi
              },
              child: Text("Buka Pengaturan"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Jadwal Sholat", height: 56),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.40,
                    decoration: BoxDecoration(
                      color: accentColor,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/haji_kabah.webp'), // Gambar dari folder assets
                        fit: BoxFit
                            .cover, // Atur ukuran gambar agar sesuai dengan container
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.40,
                    color: Colors.black.withOpacity(0.6),
                    child: Center(
                      child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: FutureBuilder(
                            future: getJadwal(),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return CircularProgressIndicator.adaptive();
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              } else if (snapshot.hasData) {
                                print(snapshot.data["data"]["timings"]);

                                List<dynamic> nextPray = getNextPrayerTime(
                                    snapshot.data["data"]["timings"]);
                                String namaWaktu = nextPray[0];
                                String waktu = nextPray[1].format(context);

                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextWidget(
                                        text: namaWaktu,
                                        color: whiteColor,
                                        textSize: 15),
                                    TextWidget(
                                        text: waktu,
                                        color: whiteColor,
                                        textSize: 30),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextWidget(
                                              text:
                                                  "${snapshot.data["data"]["date"]["hijri"]["day"]} ${snapshot.data["data"]["date"]["hijri"]["month"]["en"]} ${snapshot.data["data"]["date"]["hijri"]["year"]}",
                                              color: whiteColor,
                                              textSize: 15),
                                          TextWidget(
                                              text:
                                                  "${snapshot.data["data"]["date"]["gregorian"]["weekday"]["en"]} ${snapshot.data["data"]["date"]["gregorian"]["day"]} ${snapshot.data["data"]["date"]["gregorian"]["month"]["en"]}",
                                              color: whiteColor,
                                              textSize: 15)
                                        ],
                                      ),
                                    )
                                  ],
                                );
                              }
                              return Text('Data tidak ditemukan');
                            },
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder(
                future: getJadwal(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Text(
                        "Loading...",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Izin lokasi tidak diaktifkan",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: _showLocationPermissionDialog,
                          child: Text("Izinkan Lokasi"),
                        ),
                      ],
                    );
                  } else if (snapshot.hasData) {
                    print(snapshot.data["data"]);

                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          listSholat(context, "Subuh",
                              snapshot.data["data"]["timings"]["Fajr"]),
                          SizedBox(
                            height: 10,
                          ),
                          listSholat(context, "Dzuhur",
                              snapshot.data["data"]["timings"]["Dhuhr"]),
                          SizedBox(
                            height: 10,
                          ),
                          listSholat(context, "Asr",
                              snapshot.data["data"]["timings"]["Asr"]),
                          SizedBox(
                            height: 10,
                          ),
                          listSholat(context, "Maghrib",
                              snapshot.data["data"]["timings"]["Maghrib"]),
                          SizedBox(
                            height: 10,
                          ),
                          listSholat(context, "Isha",
                              snapshot.data["data"]["timings"]["Isha"]),
                        ],
                      ),
                    );
                  }
                  return Text('Data tidak ditemukan');
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listSholat(BuildContext context, String title, String time) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(text: title, color: blackColor, textSize: 15),
            TextWidget(text: time, color: blackColor, textSize: 15)
          ],
        ),
      ),
    );
  }
}
