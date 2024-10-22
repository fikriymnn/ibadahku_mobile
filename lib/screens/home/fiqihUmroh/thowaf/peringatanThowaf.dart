import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class PeringatanThowaf extends StatelessWidget {
  const PeringatanThowaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Peringatan Thowaf",
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(),
          ),
        ),
      ),
    );
  }
}
