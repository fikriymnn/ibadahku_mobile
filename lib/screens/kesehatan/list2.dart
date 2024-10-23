import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../constants/colors.dart';
import '../../widgets/textWidgets.dart';

class List2 extends StatefulWidget {
  const List2({super.key});

  @override
  State<List2> createState() => _List2State();
}

class _List2State extends State<List2> {
  double sizeTitle = 18;
  double sizeText = 16;

  void upSize() {
    setState(() {
      sizeTitle++;
      sizeText++;
    });
  }

  void downSize() {
    setState(() {
      sizeTitle--;
      sizeText--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Kesehatan",
          color: whiteColor,
          textSize: 20,
          isTitle: true,
        ),
        backgroundColor: primaryColor,
        /* actions: [
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
        ], */
      ),
      floatingActionButton:
          ButtonChangeSizeTextWidget(UppSize: upSize, DownSize: downSize),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Kebijakan Kesehatan untuk Calon Haji Indonesia',
            style: TextStyle(fontSize: sizeTitle, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16.0),
          BulletedList(
            listOrder: ListOrder.ordered,
            style: TextStyle(
              fontSize: sizeText,
              color: blackColor,
            ),
            bulletColor: Colors.transparent,
            numberColor: blackColor,
            bulletType: BulletType.numbered,
            listItems: [
              "Melaksanakan pemeriksaan kesehatan umroh dan haji 2 tahap di Fasilitas kesehatan pemerintah",
              "Mendapatkan vaksin meningitis dan influenza",
              "Menerima kartu kesehatan haji"
            ],
          )
        ],
      ),
    );
  }
}
