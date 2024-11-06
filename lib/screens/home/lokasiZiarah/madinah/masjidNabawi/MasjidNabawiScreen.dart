import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/penjelasanThowaf.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/masjidNabawi/KeutamaanMesjidNabawiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/masjidNabawi/SejarahMasjidNabawiScreen.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../../../widgets/customAppBar.dart';

class MesjidNabawi extends StatelessWidget {
  const MesjidNabawi({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Mesjid Nabawi",
          height: 100,
          bottom: TabBar(labelColor: Colors.white, tabs: [
            Tab(text: "Sejarah"),
            Tab(text: "Keutamaan"),
          ]),
        ),
        body: const TabBarView(
          children: [
            SejarahMesjidNabawiScreen(),
            KeutamaanMesjidNabawiScreen()
          ],
        ),
      ),
    );
  }
}
