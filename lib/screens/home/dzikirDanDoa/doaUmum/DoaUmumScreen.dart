import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/doaUmum/DoaDariAlquranScreen.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/doaUmum/DoaDariHadistScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/LokasiZiarahMadinahScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/LokasiZiarahMekkahScreen.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class DoaUmumScreen extends StatelessWidget {
  const DoaUmumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Doa Umum",
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: TextWidget(
                      text:
                          "Doa-doa berikut adalah doa-doa umum dan bebas dibaca kapan saja, semoga bisa Mmenjadi referensi bagi para jama'ah haji dan umroh takala hendak berdoa ketika thowaf,sa'i,di bukit shofa dan marwa, di padang Arofah, di Muzdalifah, dan setelah melempar jamarat",
                      color: blackColor,
                      textSize: 15),
                ),
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
                                  const DoaDariAlQuranScreen(),
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
                                          image:
                                              AssetImage("assets/quran.png"))),
                                ),
                                TextWidget(
                                    text: "Dari Al-Qur'an",
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
                              builder: (context) => const DoaDariHadistScreen(),
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
                                          image:
                                              AssetImage("assets/hadist.png"))),
                                ),
                                TextWidget(
                                    text: "Dari Hadist",
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
