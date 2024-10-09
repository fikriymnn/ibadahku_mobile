import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/services/sholatServices.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';
import 'package:intl/intl.dart';

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

  getJadwal() async {
    dynamic jadwalSholat = await JadwalSholat().getJadwalSholat();
    return jadwalSholat;
  }

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.40,
            decoration: BoxDecoration(color: accentColor),
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FutureBuilder(
                    future: getJadwal(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Text("");
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (snapshot.hasData) {
                        print(snapshot.data["data"]);
                        String namaWaktu = "";
                        String targetTimeStringMidnight =
                            snapshot.data["data"]["timings"]["Midnight"];
                        String targetTimeStringFajr =
                            snapshot.data["data"]["timings"]["Fajr"];
                        String targetTimeStringIsha =
                            snapshot.data["data"]["timings"]["Isha"];
                        DateTime now = DateTime.now();
                        String currentTime = now.toString().substring(11, 16);

                        DateFormat formatter = DateFormat('HH:mm');
                        DateTime targetTimeMidnight =
                            formatter.parse(targetTimeStringMidnight);
                        DateTime targetTimeFajr =
                            formatter.parse(targetTimeStringFajr);
                        DateTime targetTimeIsha =
                            formatter.parse(targetTimeStringIsha);
                        if (now.isAfter(targetTimeIsha) &&
                            now.isBefore(targetTimeMidnight)) {
                          namaWaktu = "Subuh";
                          print(namaWaktu);
                        } else {
                          namaWaktu = "salah";
                        }
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                                text: "Subuh", color: whiteColor, textSize: 15),
                            TextWidget(
                                text: "04:13", color: whiteColor, textSize: 30),
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
          )
        ],
      ),
    );
  }
}
