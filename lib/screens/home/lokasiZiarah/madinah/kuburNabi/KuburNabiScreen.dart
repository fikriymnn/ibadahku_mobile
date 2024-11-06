import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/penjelasanThowaf.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/kuburNabi/DoaKuburNabiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/kuburNabi/KesalahanKuburNabiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/masjidNabawi/KeutamaanMesjidNabawiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/masjidNabawi/SejarahMasjidNabawiScreen.dart';
import 'package:ibadahku_mobile/widgets/customAppBar.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KuburNabiScreen extends StatelessWidget {
  const KuburNabiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Kubur Nabi",
          height: 100,
          bottom: TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(text: "Doa"),
              Tab(text: "Kesalahan"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [DoaKuburNabiScreen(), KesalahanKuburNabiScreen()],
        ),
      ),
    );
  }
}
