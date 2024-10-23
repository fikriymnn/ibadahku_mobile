import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../constants/colors.dart';
import '../../widgets/textWidgets.dart';

class List1 extends StatefulWidget {
  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {
  double sizeTitle = 18;
  double sizeNumList = 16;
  double sizeText = 14;

  void upSize() {
    print("object");
    setState(() {
      sizeTitle++;
      sizeNumList++;
      sizeText++;
    });
  }

  void downSize() {
    setState(() {
      sizeTitle--;
      sizeNumList--;
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
            'Kondisi yang dapat memengaruhi kesehatan jemaah haji',
            style: TextStyle(fontSize: sizeTitle, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16.0),
          buildCondition(
            number: '1',
            title: 'Suhu udara',
            indonesia: 'Tropis',
            arabSaudi: 'Panas/ dingin ekstrim',
            risiko: 'Gangguan adaptasi suhu udara',
          ),
          buildCondition(
            number: '2',
            title: 'Sosial budaya',
            indonesia: 'Nasional Indonesia',
            arabSaudi: 'Internasional/ multi budaya',
            risiko: 'Stres',
          ),
          buildCondition(
            number: '3',
            title: 'Tempat tinggal',
            indonesia: 'Nyaman di rumah sendiri',
            arabSaudi: 'Hotel/ pondokan/ berpindah-pindah',
            risiko: 'Kelelahan',
          ),
          buildCondition(
            number: '4',
            title: 'Aktifitas',
            indonesia: 'Sehari-hari',
            arabSaudi: 'Kontinu, aktivitas fisik',
            risiko: 'Kelelahan',
          ),
          buildCondition(
            number: '5',
            title: 'Konsumsi makanan',
            indonesia: 'Disesuaikan sendiri',
            arabSaudi: 'Terbatas, tidak banyak pilihan',
            risiko: 'Gangguan pencernaan',
          ),
          buildCondition(
            number: '6',
            title: 'Transportasi',
            indonesia: 'Banyak pilihan',
            arabSaudi: 'Terbatas, antri',
            risiko: 'Kelelahan',
          ),
          buildCondition(
            number: '7',
            title: 'Fasilitas Kesehatan',
            indonesia: 'Dapat diakses, dekat rumah',
            arabSaudi: 'Terbatas',
            risiko: 'Penyakit berkelanjutan',
          ),
          buildCondition(
            number: '8',
            title: 'Kepadatan Orang',
            indonesia: 'Normal',
            arabSaudi: 'Sangat padat',
            risiko: 'Penularan penyakit dan cedera',
          ),
        ],
      ),
    );
  }

  Widget buildCondition({
    required String number,
    required String title,
    required String indonesia,
    required String arabSaudi,
    required String risiko,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$number. $title',
          style: TextStyle(fontSize: sizeNumList, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4.0),
        Text(
          'Indonesia (Ideal): $indonesia',
          style: TextStyle(fontSize: sizeText),
        ),
        Text(
          'Arab Saudi: $arabSaudi',
          style: TextStyle(fontSize: sizeText),
        ),
        Text(
          'Risiko kesehatan: $risiko',
          style: TextStyle(fontSize: sizeText),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
