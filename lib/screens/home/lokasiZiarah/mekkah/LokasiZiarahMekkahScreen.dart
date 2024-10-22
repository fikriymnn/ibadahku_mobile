import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/ArofahScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/GuaHiroScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/GuaTsaurScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/KabahScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/KeutamaanKotaMekkahScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/MasjidilHaromScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/MinaScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/mekkah/MuzdalifahScreen.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class LokasiZiarahMekkahScreeen extends StatelessWidget {
  const LokasiZiarahMekkahScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    List menu = [
      {
        "leading": FaIcon(
          FontAwesomeIcons.city,
          color: Colors.blue,
        ),
        "title": "Keutamaan Kota Mekkah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const KeutamaanKotaMekkahScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.mosque,
          color: Colors.red,
        ),
        "title": "Masjidil Harom",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const MasjidilHaromScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.kaaba,
          color: Colors.green,
        ),
        "title": "Ka'bah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const KabahScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.campground,
          color: Colors.orange,
        ),
        "title": "Mina",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const MinaScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.mapLocation,
          color: Colors.purple,
        ),
        "title": "Arofah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const ArofahScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.cloud,
          color: Colors.yellow,
        ),
        "title": "Muzdalifah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const MuzdalifahScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.building,
          color: Colors.black,
        ),
        "title": "gua Hira",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const GuaHiroScren(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.building,
          color: Colors.pink,
        ),
        "title": "Gua At-tsaur",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const GuaTsaurScreen(),
            ),
          );
        }
      },
    ];
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          centerTitle: false,
          title: TextWidget(
            text: "Lokasi Ziarah Mekkah",
            color: whiteColor,
            textSize: 20,
            isTitle: true,
          ),
          backgroundColor: primaryColor,
          /* actions: [
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
          ], */
        ),
        body: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: (index + 1) % 2 == 0
                    ? primaryColor.withOpacity(0.2)
                    : whiteColor,
                child: ListTile(
                  leading: menu[index]["leading"],
                  title: Text(
                    menu[index]["title"],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: menu[index]["click"],
                ),
              );
            }));
  }
}
