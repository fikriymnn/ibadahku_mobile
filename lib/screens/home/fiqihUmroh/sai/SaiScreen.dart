import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/sai/tabBar/penjelasanSai.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/sai/tabBar/tataCaraSai.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class SaiScreen extends StatelessWidget {
  const SaiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Sa'i",
          height: 100,
          bottom: const TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(text: "Penjelasan"),
              Tab(text: "Tata Cara"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PenjelasanSai(),
            TataCaraSai(),
          ],
        ),
      ),
    );
  }
}
