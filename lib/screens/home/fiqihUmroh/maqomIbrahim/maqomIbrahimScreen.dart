import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/maqomIbrahim/tabBar/penjelasanMaqom.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/maqomIbrahim/tabBar/sholatBelakangMaqom.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class MaqomIbrahimScreen extends StatelessWidget {
  const MaqomIbrahimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Maqom Ibrahim",
          height: 100,
          bottom: const TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(text: "Penjelasan"),
              Tab(text: "Sholat"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PenjelasanMaqom(),
            SholatBelakangMaqom(),
          ],
        ),
      ),
    );
  }
}
