import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/tabBar/penjelasanThowaf.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/kuburNabi/DoaKuburNabiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/kuburNabi/KesalahanKuburNabiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/masjidNabawi/KeutamaanMesjidNabawiScreen.dart';
import 'package:ibadahku_mobile/screens/home/lokasiZiarah/madinah/masjidNabawi/SejarahMasjidNabawiScreen.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KuburNabiScreen extends StatelessWidget {
  const KuburNabiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          bottom: TabBar(
            tabs: [
              Tab(
                child: TextWidget(
                  text: "Doa",
                  color: whiteColor,
                  textSize: 17,
                  isTitle: true,
                ),
              ),
              Tab(
                child: TextWidget(
                  text: "Kesalahan",
                  color: whiteColor,
                  textSize: 17,
                  isTitle: true,
                ),
              ),
            ],
          ),
          title: TextWidget(
            text: "Kubur Nabi",
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
          children: [DoaKuburNabiScreen(), KesalahanKuburNabiScreen()],
        ),
      ),
    );
  }
}
