import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/BersabarlahScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/BertaubatSebelumHajiScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/HartaYangHalalScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/IkhlasScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/JanganBerdebatScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/JanganMaksiatScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/MeneladaniNabiScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/SegeraJadiTamuAllahScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/TamuAllahScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/TemanYangBaikScreen.dart';
import 'package:ibadahku_mobile/screens/home/persiapanHaji/keutamaanHaji/KeutamaanHajiScreen.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PersiapanHajiScreen extends StatelessWidget {
  const PersiapanHajiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List menu = [
      {
        "icon": FontAwesomeIcons.suitcase,
        "img": "assets/haji.png",
        "title": "Keutamaan Haji",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const KeutamaanHajiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.kaaba,
        "img": "assets/jamaah.png",
        "title": "Jama'ah Haji Tamu Allah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const TamuAllahScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.campground,
        "img": "assets/kaligrafi_allah.png",
        "title": "Segera Jadi Tamu Allah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const SegeraJadiTamuAllahScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.personPraying,
        "img": "assets/kaligrafi_nabi.png",
        "title": "Meneladani Nabi",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const MeneladaniNabiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.personPraying,
        "img": "assets/kaligrafi_nabi.png",
        "title": "Bersabarlah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const BersabarScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.personPraying,
        "img": "assets/kaligrafi_nabi.png",
        "title": "Ikhlas",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const IkhlasScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.personPraying,
        "img": "assets/kaligrafi_nabi.png",
        "title": "Jangan Berdebat",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const JanganBerdebatScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.personPraying,
        "img": "assets/kaligrafi_nabi.png",
        "title": "Jangan Maksiat",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const JanganMaksiatScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.personPraying,
        "img": "assets/kaligrafi_nabi.png",
        "title": "Bertaubat Sebelum Haji",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const BertaubatSebelumHajiScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.personPraying,
        "img": "assets/kaligrafi_nabi.png",
        "title": "Harta Yang Halal",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const HartaYangHalalScreen(),
            ),
          );
        }
      },
      {
        "icon": FontAwesomeIcons.personPraying,
        "img": "assets/kaligrafi_nabi.png",
        "title": "Teman yang Baik",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const TemanYangBaikScreen(),
            ),
          );
        }
      },
      // {
      //   "icon": FontAwesomeIcons.personPraying,
      //   "img": "assets/kaligrafi_nabi.png",
      //   "title": "Hakikat Tabiyah",
      //   "click": () {
      //     pushWithoutNavBar(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => const PersiapanHajiScreen(),
      //       ),
      //     );
      //   }
      // },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Persiapan Haji",
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
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
            itemCount: menu.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Jumlah kolom dalam grid
              crossAxisSpacing: 20, // Jarak antar item secara horizontal
              mainAxisSpacing: 20, // Jarak antar item secara vertikal
              childAspectRatio: 0.60,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                    onTap: menu[index]["click"],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 0), // Changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              menu[index]["img"],
                              height: 100,
                              width: 100,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextWidget(
                          text: menu[index]["title"],
                          color: blackColor,
                          textSize: 15,
                          isTitle: true,
                        )
                      ],
                    )
                    //  Column(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       width: 60,
                    //       height: 60,
                    //       decoration: BoxDecoration(
                    //         shape: BoxShape.circle,
                    //         color: primaryColor,
                    //       ),
                    //       child: Center(
                    //         child: FaIcon(
                    //           menu[index]["icon"],
                    //           color: whiteColor,
                    //         ),
                    //       ),
                    //     ),
                    //     TextWidget(
                    //       text: menu[index]["title"],
                    //       color: blackColor,
                    //       textSize: 15,
                    //       isTitle: true,
                    //     )
                    //   ],
                    // ),
                    ),
              );
            }),
      ),
    );
  }
}
