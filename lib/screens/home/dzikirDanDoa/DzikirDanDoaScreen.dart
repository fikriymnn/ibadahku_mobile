import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/DzikirDanDoaKeseharianScreen.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/doaUmum/DoaUmumScreen.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/dzikirPagiDanPetang/DzikirPagiDanPetangScreen.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/ihramMiqot/ihramMiqotScreen.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/thowafScreen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../constants/colors.dart';
import '../../../widgets/textWidgets.dart';

class DzikirDanDoaScreen extends StatelessWidget {
  const DzikirDanDoaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> items = [
      {
        'image': 'assets/ihram_di_miqot.png',
        'text': 'Dzikir Haji & Umroh',
        'click': () {
          // pushWithoutNavBar(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => IhramMiqotScreen(),
          //   ),
          // );
        },
      },
      {
        'image': 'assets/haji.png',
        'text': 'Dzikir Pagi & Petang',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => DzikirPagiDanPetangScreen(),
            ),
          );
        },
      },
      {
        'image': 'assets/maqom.png',
        'text': 'Dzikir & Doa Keseharian',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => DzikirDanDoaKeseharianScreen(),
            ),
          );
        },
      },
      {
        'image': 'assets/zamzam_icon.png',
        'text': 'Doa Umum(Arofah,dll)',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => DoaUmumScreen(),
            ),
          );
        },
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Dzikir & Doa",
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
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: items[index]['click'],
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    items[index]['image']!,
                    height: 125,
                    width: 125,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    items[index]['text']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
