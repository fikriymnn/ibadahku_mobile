import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/ihramMiqot/laranganIhram.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/ihramMiqot/penjelasanIhram.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class IhramMiqotScreen extends StatelessWidget {
  const IhramMiqotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        'leading': FaIcon(
          FontAwesomeIcons.book,
          color: Colors.blue,
        ),
        'title': 'Penjelasan',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => PenjelasanIhram(),
            ),
          );
        },
      },
      {
        'leading': FaIcon(
          FontAwesomeIcons.mapLocationDot,
          color: Colors.red,
        ),
        'title': 'Tempat Miqot',
        'click': () {},
      },
      {
        'leading': FaIcon(
          FontAwesomeIcons.ban,
          color: Colors.red,
        ),
        'title': 'Larangan Ihram',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => LaranganIhram(),
            ),
          );
        },
      },
      {
        'leading': FaIcon(
          FontAwesomeIcons.triangleExclamation,
          color: const Color.fromARGB(255, 233, 200, 16),
        ),
        'title': 'Kesalahan-kesalahan',
        'click': () {},
      },
      {
        'leading': FaIcon(
          FontAwesomeIcons.bookOpen,
          color: Colors.green,
        ),
        'title': 'Sunnah sebelum Ihram',
        'click': () {},
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Ihram di Miqot",
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
        padding: const EdgeInsets.all(16.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            color: (index + 1) % 2 == 0
                ? primaryColor.withOpacity(0.2)
                : whiteColor,
            child: ListTile(
              leading: items[index]['leading'],
              title: Text(items[index]['title']),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: items[index]['click'],
            ),
          );
        },
      ),
    );
  }
}
