import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/caraThowaf.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/penjelasanThowaf.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class ThowafScreen extends StatelessWidget {
  const ThowafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Penjelasan"),
              Tab(text: "Cara & Do'a"),
            ],
          ),
          title: TextWidget(
            text: "Thowaf",
            color: whiteColor,
            textSize: 20,
            isTitle: true,
          ),
          backgroundColor: primaryColor,
          /* actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: whiteColor,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: whiteColor,
                )),
          ], */
        ),
        body: TabBarView(
          children: [
            const PenjelasanThowaf(),
            CaraThowaf(),
          ],
        ),
      ),
    );
  }
}
