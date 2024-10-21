import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/LokasiZiarahMadinahScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/LokasiZiarahMekkahScreen.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class LokasiZiarahScreen extends StatelessWidget {
  const LokasiZiarahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Lokasi Ziarah",
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 0), // Changes position of shadow
                    ),
                  ]),
              child: Center(
                child: TextWidget(
                    text:
                        "Di Mekkah dan Madianh ada lokasi-lokasi yang di syari'atkan untuk di ziarohi dan bernilai ibadah dan ada lokasi-lokasiy yang tidak di syari'atkan untuk di ziarohi akan tetapi boleh saja seseorang mengunjunginya karna bernilai sejarah akan tetapi tidak ada niat ritual khusus di situ.",
                    color: blackColor,
                    textSize: 15),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          pushWithoutNavBar(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const LokasiZiarahMekkahScreeen(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 0), // Changes position of shadow
                                ),
                              ]),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/kaligrafi_nabi.png"))),
                                ),
                                TextWidget(
                                    text: "Mekkah",
                                    color: blackColor,
                                    textSize: 15)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          pushWithoutNavBar(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const LokasiZiarahMadinahScreeen(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 0), // Changes position of shadow
                                ),
                              ]),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/kaligrafi_nabi.png"))),
                                ),
                                TextWidget(
                                    text: "Madinah",
                                    color: blackColor,
                                    textSize: 15)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
