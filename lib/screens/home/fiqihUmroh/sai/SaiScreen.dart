import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/sai/tabBar/penjelasanSai.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class SaiScreen extends StatelessWidget {
  const SaiScreen({super.key});

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
              Tab(text: "Tata Cara"),
            ],
          ),
          title: TextWidget(
            text: "Sa'i",
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
            PenjelasanSai(),
            Center(),
          ],
        ),
      ),
    );
  }
}
