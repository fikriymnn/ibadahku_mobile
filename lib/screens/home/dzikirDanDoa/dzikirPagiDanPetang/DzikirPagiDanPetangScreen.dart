import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/dzikirPagiDanPetang/DzikirPagiScreen.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/dzikirPagiDanPetang/DzikirPetangScreen.dart';
import 'package:ibadahku_mobile/screens/home/dzikirDanDoa/dzikirPagiDanPetang/PenjelasanDzikirPagiDanPetang.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/penjelasanThowaf.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class DzikirPagiDanPetangScreen extends StatelessWidget {
  const DzikirPagiDanPetangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Dzikir Pagi & Petang",
          height: 100,
          bottom: const TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(text: "Penjelasan"),
              Tab(text: "Dzikir Pagi"),
              Tab(text: "Dzikir Petang"),
            ],
          ),
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
