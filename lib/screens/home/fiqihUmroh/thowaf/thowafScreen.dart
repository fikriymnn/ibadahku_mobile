import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/caraThowaf.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/penjelasanThowaf.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class ThowafScreen extends StatelessWidget {
  const ThowafScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Thowaf",
          height: 100,
          bottom: const TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(text: "Penjelasan"),
              Tab(text: "Cara & Do'a"),
            ],
          ),
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
