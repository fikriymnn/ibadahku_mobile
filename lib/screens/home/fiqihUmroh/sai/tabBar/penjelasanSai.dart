import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/sai/pengertianSai.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/sai/saiRukunUmroh.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/sai/sejarahSai.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/sai/syaratSai.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../../../constants/colors.dart';

class PenjelasanSai extends StatelessWidget {
  const PenjelasanSai({super.key});

  @override
  Widget build(BuildContext context) {
    List menuList = [
      {
        'icon': const FaIcon(
          FontAwesomeIcons.book,
          color: Colors.blue,
        ),
        'title': "Pengertian",
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => PengertianSai(),
            ),
          );
        },
      },
      {
        'icon': const FaIcon(
          FontAwesomeIcons.clockRotateLeft,
          color: Colors.red,
        ),
        'title': "Sejarah",
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => SejarahSai(),
            ),
          );
        },
      },
      {
        'icon': const FaIcon(
          FontAwesomeIcons.kaaba,
          color: Colors.green,
        ),
        'title': "Rukun Haji & Umroh",
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => SaiRukunUmroh(),
            ),
          );
        },
      },
      {
        'icon': const FaIcon(
          FontAwesomeIcons.bookOpenReader,
          color: primaryColor,
        ),
        'title': "Syarat-syarat Sa'i",
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => SyaratSai(),
            ),
          );
        },
      },
    ];
    return ListView.builder(
      itemCount: menuList.length,
      itemBuilder: (context, index) {
        return ListTile(
          tileColor:
              (index + 1) % 2 == 0 ? primaryColor.withOpacity(0.2) : whiteColor,
          leading: menuList[index]['icon'],
          title: Text(menuList[index]['title']),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: menuList[index]['click'],
        );
      },
    );
  }
}
