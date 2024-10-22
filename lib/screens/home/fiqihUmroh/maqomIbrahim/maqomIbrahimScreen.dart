import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class MaqomIbrahimScreen extends StatelessWidget {
  const MaqomIbrahimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          bottom: const TabBar(
            tabs: [
              Tab(text: "Penjelasan"),
              Tab(text: "Cara & Do'a"),
            ],
          ),
          title: TextWidget(
            text: "Maqom Ibrahim",
            color: whiteColor,
            textSize: 20,
            isTitle: true,
          ),
          backgroundColor: primaryColor,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: whiteColor,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: whiteColor,
                )),
          ],
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("data"),
            ),
            Center(
              child: Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}
