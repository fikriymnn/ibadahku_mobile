import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/screens/HomeScreen.dart';
import 'package:ibadahku_mobile/screens/KesehatanScreen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const FaIcon(FontAwesomeIcons.house),
            title: "Home",
            activeForegroundColor: primaryColor,
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const FaIcon(FontAwesomeIcons.solidClock),
            title: "Sholat",
            activeForegroundColor: primaryColor,
          ),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            icon: const FaIcon(FontAwesomeIcons.solidCompass),
            title: "Kiblat",
            activeForegroundColor: primaryColor,
          ),
        ),
        PersistentTabConfig(
          screen: const KesehatanScreen(),
          item: ItemConfig(
            icon: const FaIcon(FontAwesomeIcons.heartPulse),
            title: "Kesehatan",
            activeForegroundColor: primaryColor,
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      backgroundColor: Colors.white,
      tabs: _tabs(),
      navBarBuilder: (navBarConfig) => Style4BottomNavBar(
        navBarConfig: navBarConfig,
      ),
      navBarOverlap: NavBarOverlap.full(),
    );
  }
}
