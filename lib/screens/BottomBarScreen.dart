import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.bookmark_rounded,
              size: 56,
              color: Colors.amber[400],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.favorite_rounded,
              size: 56,
              color: Colors.red[400],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.email_rounded,
              size: 56,
              color: Colors.green[400],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(
              Icons.folder_rounded,
              size: 56,
              color: Colors.blue[400],
            ),
          ),
        ],
      ),
      bottomNavigationBar: WaterDropNavBar(
        backgroundColor: navigationBarColor,
        onItemSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
          pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            filledIcon: Icons.bookmark_rounded,
            outlinedIcon: Icons.bookmark_border_rounded,
          ),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded),
          BarItem(
            filledIcon: Icons.email_rounded,
            outlinedIcon: Icons.email_outlined,
          ),
          BarItem(
            filledIcon: Icons.folder_rounded,
            outlinedIcon: Icons.folder_outlined,
          ),
        ],
      ),
    );
  }
}
