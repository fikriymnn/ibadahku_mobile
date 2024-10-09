import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/services/sholatServices.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';
import 'package:intl/intl.dart';

class SholatScreen extends StatefulWidget {
  const SholatScreen({super.key});

  @override
  State<SholatScreen> createState() => _SholatScreenState();
}

class _SholatScreenState extends State<SholatScreen> {
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
          text: "Jadwal Sholat",
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
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.40,
              decoration: BoxDecoration(color: accentColor),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder(
                future: getJadwal(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text("");
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
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
