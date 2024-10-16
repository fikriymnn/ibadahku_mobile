import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/PersiapanHajiScreen.dart';
import 'package:ibadahku_mobile/services/sholatServices.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';
import 'package:intl/intl.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _loading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // String getNextPrayerTime() {
  //   // Waktu saat ini
  //   final now = TimeOfDay.now();

  //   // List untuk menyimpan nama dan waktu salat dalam format TimeOfDay
  //   List<Map<String, dynamic>> timesList = prayerTimes.entries.map((entry) {
  //     final timeParts = entry.value.split(':');
  //     final timeOfDay = TimeOfDay(
  //       hour: int.parse(timeParts[0]),
  //       minute: int.parse(timeParts[1]),
  //     );
  //     return {
  //       'name': entry.key,
  //       'time': timeOfDay,
  //     };
  //   }).toList();

  //   // Cari waktu salat selanjutnya berdasarkan waktu saat ini
  //   for (var time in timesList) {
  //     if (_isTimeAfter(now, time['time'])) {
  //       return '${time['name']} pada ${time['time'].format(context)}';
  //     }
  //   }

  //   // Jika sudah melewati semua waktu, kembali ke Fajr
  //   return 'Jadwal berikutnya adalah: ${timesList[0]['name']} pada ${timesList[0]['time'].format(context)}';
  // }

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

  @override
  Widget build(BuildContext context) {
    List menu = [
      {
        "icon": FontAwesomeIcons.suitcase,
        "title": "Persiapan Haji",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const PersiapanHajiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.kaaba,
        "title": "Fiqih Umroh",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const PersiapanHajiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.campground,
        "title": "Fiqih Haji",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const PersiapanHajiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.personPraying,
        "title": "Dzikir & Doa",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const PersiapanHajiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.play,
        "title": "Tata Cara Umroh",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const PersiapanHajiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.play,
        "title": "Tata Cara Haji",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const PersiapanHajiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.map,
        "title": "Peta",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const PersiapanHajiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.mapPin,
        "title": "Lokasi Ziarah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const PersiapanHajiScreen(),
            ),
          );
        }
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Ibadahku",
          color: whiteColor,
          textSize: 20,
          isTitle: true,
        ),
        backgroundColor: primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: whiteColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: whiteColor,
              )),
        ],
      ),
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
                                return Text("");
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    itemCount: menu.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Jumlah kolom dalam grid
                      crossAxisSpacing:
                          10, // Jarak antar item secara horizontal
                      mainAxisSpacing: 10, // Jarak antar item secara vertikal
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: menu[index]["click"],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primaryColor,
                              ),
                              child: Center(
                                child: FaIcon(
                                  menu[index]["icon"],
                                  color: whiteColor,
                                ),
                              ),
                            ),
                            TextWidget(
                              text: menu[index]["title"],
                              color: blackColor,
                              textSize: 15,
                              isTitle: true,
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
