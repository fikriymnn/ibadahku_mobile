import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'textWidgets.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  final TabBar? bottom;
  final List<Widget>? actions;
  const CustomAppbar(
      {super.key,
      required this.title,
      required this.height,
      this.bottom,
      this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      foregroundColor: Colors.white,
      bottom: bottom,
      title: TextWidget(
        text: title,
        color: whiteColor,
        textSize: 20,
        isTitle: true,
      ),
      backgroundColor: primaryColor,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
