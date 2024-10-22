import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/KeutamaanKotaMadinahScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/MasjidRaudohScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/MesjidAlJumahScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/MesjidAlQiblatainScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/kuburBaqi/KuburBaqiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/kuburNabi/KuburNabiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/kuburSyuhadaUhud/KuburSyuhadaUhudScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/masjidNabawi/MasjidNabawiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/mesjidQuba/MesjidQubaScren.dart';
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

class LokasiZiarahMadinahScreeen extends StatelessWidget {
  const LokasiZiarahMadinahScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    List menu = [
      {
        "leading": FaIcon(
          FontAwesomeIcons.city,
          color: Colors.blue,
        ),
        "title": "Keutamaan Kota Madinah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const KeutamaanKotaMadinahScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.mosque,
          color: Colors.red,
        ),
        "title": "Mesjid Nabawi",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const MesjidNabawi(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.mosque,
          color: Colors.green,
        ),
        "title": "Raudhah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const MasjidRaudohScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.placeOfWorship,
          color: Colors.orange,
        ),
        "title": "Kubur Nabi",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const KuburNabiScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.placeOfWorship,
          color: Colors.purple,
        ),
        "title": "Kubur Baqi'",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const KuburBaqiScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.placeOfWorship,
          color: Colors.yellow,
        ),
        "title": "Kuburan Syuhada'Uhud",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const KuburSyuhadaUhudScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.mosque,
          color: Colors.black,
        ),
        "title": "Mesjid Quba",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const MesjidQubaScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.mosque,
          color: Colors.pink,
        ),
        "title": "Mesjid Al-Qiblatain",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const MesjidAlQiblatainScreen(),
            ),
          );
        }
      },
      {
        "leading": FaIcon(
          FontAwesomeIcons.mosque,
          color: Colors.grey,
        ),
        "title": "Mesjid Al-jum'ah",
        "click": () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => const MesjidAlJumahScreen(),
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
            text: "Lokasi Ziarah Madinah",
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
