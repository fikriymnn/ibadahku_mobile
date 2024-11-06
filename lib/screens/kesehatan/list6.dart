import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../constants/colors.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/textWidgets.dart';

class List6 extends StatefulWidget {
  const List6({super.key});

  @override
  State<List6> createState() => _List6State();
}

class _List6State extends State<List6> {
  double sizeTitle = 18;
  double sizeNum = 16;
  double sizeText = 14;

  void upSize() {
    setState(() {
      sizeTitle++;
      sizeNum++;
      sizeText++;
    });
  }

  void downSize() {
    setState(() {
      sizeTitle--;
      sizeNum--;
      sizeText--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Kesehatan", height: 56),
      floatingActionButton:
          ButtonChangeSizeTextWidget(UppSize: upSize, DownSize: downSize),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Setelah kembali ke tanah air',
            style: TextStyle(fontSize: sizeTitle, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25.0),
          Text(
            "Biasanya Jemaah umroh dan haji akan mengalami batuk sekembalinya ke tanah air. Kondisi ini diperparah bila tidak langsung istirahat.",
            style: TextStyle(
              fontSize: sizeText,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "1. Bila menderita batuk",
            style: TextStyle(
              fontSize: sizeNum,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: sizeText,
            ),
            listItems: [
              "Istirahat yang cukup.",
              "Pakai masker untuk menutup mulut dan hidung.",
              "Banyak minum air putih yang hangat.",
              "Kurangi makanan berlemak/minyak, terlalu manis atau dingin.",
              "Bila batuk terus berlanjut sebaiknya ke dokter.",
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "2. Tetap makan dengan gizi seimbang, buah dan sayur yang cukup",
            style: TextStyle(
              fontSize: sizeNum,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "3. Melakukan aktivitas fisik ringan dan sedang minimal 30 menit setiap hari",
            style: TextStyle(
              fontSize: sizeNum,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "4. Tidak merokok",
            style: TextStyle(
              fontSize: sizeNum,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "5. Cukup istirahat",
            style: TextStyle(
              fontSize: sizeNum,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
