import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/textWidgets.dart';

class List2 extends StatelessWidget {
  const List2({super.key});

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
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Kebijakan Kesehatan untuk Calon Haji Indonesia',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          BulletedList(
            listOrder: ListOrder.ordered,
            style: TextStyle(
              fontSize: 16,
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
