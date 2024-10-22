import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/textWidgets.dart';

class List6 extends StatelessWidget {
  const List6({super.key});

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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Setelah kembali ke tanah air',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25.0),
          Text(
            "Biasanya Jemaah umroh dan haji akan mengalami batuk sekembalinya ke tanah air. Kondisi ini diperparah bila tidak langsung istirahat.",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "1. Bila menderita batuk",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: 15,
            ),
            listItems: [
              "Istirahat yang cukup.",
              "Pakai masker untuk menutup mulut dan hidung.",
              "Banyak minum air putih yang hangat.",
              "Kurangi makanan berlemak/minyak, terlalu manis atau dingin.",
              "Bila batuk terus berlanjut sebaiknya ke dokter.",
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "2. Tetap makan dengan gizi seimbang, buah dan sayur yang cukup",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "3. Melakukan aktivitas fisik ringan dan sedang minimal 30 menit setiap hari",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "4. Tidak merokok",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "5. Cukup istirahat",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
