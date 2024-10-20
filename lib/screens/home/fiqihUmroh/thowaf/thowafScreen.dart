import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/penjelasanThowaf.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class ThowafScreen extends StatelessWidget {
  const ThowafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          bottom: TabBar(
            tabs: [
              Tab(text: "Penjelasan"),
              Tab(text: "Do'a"),
              Tab(text: "Tata Cara"),
              Tab(text: "Kesalahan"),
            ],
          ),
          title: TextWidget(
            text: "Thowaf",
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
        body: const TabBarView(
          children: [
            PenjelasanThowaf(),
            Center(child: Text('Konten Tab 2')),
            Center(child: Text('Konten Tab 3')),
            Center(child: Text('Konten Tab 4')),
          ],
        ),
      ),
    );
  }
}
