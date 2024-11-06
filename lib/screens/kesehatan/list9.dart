import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/textWidgets.dart';

class List9 extends StatelessWidget {
  const List9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Kesehatan", height: 56),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Haid/Menstruasi",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
