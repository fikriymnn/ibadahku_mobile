import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../constants/colors.dart';
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
            'Kondisi Klinis Yang Tidak Memenuhi Syarat Istithaah (Mampu) Kesehatan',
            style: TextStyle(fontSize: sizeTitle, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25.0),
          Text(
            '1. Kondisi Klinis Mengancam Jiwa',
            style: TextStyle(fontSize: sizeNum, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10.0),
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
          SizedBox(height: 10.0),
          Text(
            '2. Gangguan Jiwa Berat',
            style: TextStyle(fontSize: sizeNum, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10.0),
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
          SizedBox(height: 10.0),
          Text(
            '3. Penyakit yang Sulit Diharapkan Kesembuhannya',
            style: TextStyle(fontSize: sizeNum, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10.0),
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
          SizedBox(
            height: 25.0,
          ),
          Text(
            "Beberapa penyakit dengan resiko tinggi yang biasa diderita Jamaah Indonesia. Penyakit ini dapat dicegah bila cukup pengetahuan dan mempersiapkan diri dalam menghadapi perubahan kondisi yang akan terjadi, misalnya adanya perubahan pola makan, pola tidur, cuaca dan suhu udara.",
            style: TextStyle(
              fontSize: sizeText,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            "Penyakit dengan resiko tinggi tersebut adalah:",
            style: TextStyle(
              fontSize: sizeText,
            ),
          ),
          SizedBox(
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
