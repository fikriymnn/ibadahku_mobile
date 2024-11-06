import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'textWidgets.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  const CustomAppbar({super.key, required this.title, required this.height});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      foregroundColor: Colors.white,
      title: TextWidget(
        text: title,
        color: whiteColor,
        textSize: 20,
        isTitle: true,
      ),
      backgroundColor: primaryColor,
      /* actions: [
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
        ], */
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
