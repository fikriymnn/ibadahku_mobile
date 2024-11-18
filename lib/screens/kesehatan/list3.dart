import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../constants/colors.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/textWidgets.dart';

class List3 extends StatefulWidget {
  const List3({super.key});

  @override
  State<List3> createState() => _List3State();
}

class _List3State extends State<List3> {
  double sizeTitle = 18;
  double sizeNum = 16;
  double sizeText = 14;

  final double maxTitle = 28;
  final double minTitle = 14;
  final double maxNum = 26;
  final double minNum = 12;
  final double maxText = 24;
  final double minText = 10;

  void upSize() {
    setState(() {
      if (sizeTitle < maxTitle) sizeTitle++;
      if (sizeNum < maxNum) sizeNum++;
      if (sizeText < maxText) sizeText++;
    });
  }

  void downSize() {
    setState(() {
      if (sizeTitle > minTitle) sizeTitle--;
      if (sizeNum > minNum) sizeNum--;
      if (sizeText > minText) sizeText--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Kesehatan", height: 56),
      floatingActionButton:
          ButtonChangeSizeTextWidget(UppSize: upSize, DownSize: downSize),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Kondisi Klinis Yang Tidak Memenuhi Syarat Istithaah Kesehatan',
            style: TextStyle(fontSize: sizeTitle, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25.0),
          Text(
            '1. Kondisi Klinis Mengancam Jiwa',
            style: TextStyle(fontSize: sizeNum, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10.0),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: sizeText,
            ),
            listItems: [
              "Penyakit Paru Obstruktif Kronik stadium IV",
              "Gagal jantung stadium IV",
              "Penyakit ginjal kronik stadium IV dengan peritoneal dialysis/hemodialisis regular",
              "AIDS stadium IV dengan infeksi oportunistik",
              "Stroke perdarahan yang luas"
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            '2. Gangguan Jiwa Berat',
            style: TextStyle(fontSize: sizeNum, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10.0),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: sizeText,
            ),
            listItems: [
              "Skizofrenia berat",
              "Dementia berat",
              "Retardasi mental berat",
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            '3. Penyakit yang Sulit Diharapkan Kesembuhannya',
            style: TextStyle(fontSize: sizeNum, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10.0),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: sizeText,
            ),
            listItems: [
              "Keganasan stadium akhir",
              "Tuberkulosis dengan total resisten obat",
              "Penyakit hati sirosis atau hepatoma decompensate",
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Text(
            "Beberapa penyakit dengan resiko tinggi yang biasa diderita Jamaah Indonesia. Penyakit ini dapat dicegah bila cukup pengetahuan dan mempersiapkan diri dalam menghadapi perubahan kondisi yang akan terjadi, misalnya adanya perubahan pola makan, pola tidur, cuaca dan suhu udara.",
            style: TextStyle(
              fontSize: sizeText,
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Text(
            "Penyakit dengan resiko tinggi tersebut adalah:",
            style: TextStyle(
              fontSize: sizeText,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          BulletedList(
            numberColor: blackColor,
            bulletColor: Colors.transparent,
            bulletType: BulletType.numbered,
            style: TextStyle(
              color: blackColor,
              fontSize: sizeText,
            ),
            listItems: [
              "Hipertensi",
              "Diabetes mellitus",
              "Gangguan metabolisme protein lemak",
              "Kardiomegali (pembesaran jantung)",
              "Kegemukan (obesitas)",
              "Tekanan darah rendah",
              "Asma",
              "Penyakit jantung dan pembuluh darah",
              "Kepikunan",
              "Penyakit paru obstruksi kronik (PPOK) dan penyakit infeksi paru-paru (pneumonia)"
            ],
          ),
        ],
      ),
    );
  }
}
