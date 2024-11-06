import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class MinumZamzam extends StatelessWidget {
  const MinumZamzam({super.key});

  @override
  Widget build(BuildContext context) {
    List menuList = [
      {
        'icon': const FaIcon(
          FontAwesomeIcons.book,
          color: Colors.blue,
        ),
        'title': "Pengertian",
        'click': () {},
      },
      {
        'icon': const FaIcon(
          FontAwesomeIcons.clockRotateLeft,
          color: Colors.red,
        ),
        'title': "Sejarah",
        'click': () {},
      },
      {
        'icon': const FaIcon(
          FontAwesomeIcons.bookOpenReader,
          color: Colors.green,
        ),
        'title': "Keutamaan",
        'click': () {},
      },
      {
        'icon': const FaIcon(
          FontAwesomeIcons.triangleExclamation,
          color: primaryColor,
        ),
        'title': "Kesalahan",
        'click': () {},
      },
    ];
    return Scaffold(
      appBar: CustomAppbar(title: "Minum Zamzam", height: 56),
      body: ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: (index + 1) % 2 == 0
                ? primaryColor.withOpacity(0.2)
                : whiteColor,
            leading: menuList[index]['icon'],
            title: Text(menuList[index]['title']),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: menuList[index]['click'],
          );
        },
      ),
    );
  }
}
