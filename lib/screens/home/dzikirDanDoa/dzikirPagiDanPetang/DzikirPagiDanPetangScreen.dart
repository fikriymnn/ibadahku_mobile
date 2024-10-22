import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/dzikirPagiDanPetang/DzikirPagiScreen.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/dzikirPagiDanPetang/DzikirPetangScreen.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/dzikirPagiDanPetang/PenjelasanDzikirPagiDanPetang.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/penjelasanThowaf.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class DzikirPagiDanPetangScreen extends StatelessWidget {
  const DzikirPagiDanPetangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          bottom: TabBar(
            tabs: [
              Tab(
                child: TextWidget(
                  text: "Penjelasan",
                  color: whiteColor,
                  textSize: 16,
                  isTitle: true,
                ),
              ),
              Tab(
                child: TextWidget(
                  text: "Dzikir Pagi",
                  color: whiteColor,
                  textSize: 16,
                  isTitle: true,
                ),
              ),
              Tab(
                child: TextWidget(
                  text: "Dzikir Petang",
                  color: whiteColor,
                  textSize: 16,
                  isTitle: true,
                ),
              ),
            ],
          ),
          title: TextWidget(
            text: "Dzikir Pagi & Petang",
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
            PenjelasanDzikirPagiDanPetang(),
            DzikirPagiScreen(),
            DzikirPatangScreen()
          ],
        ),
      ),
    );
  }
}
