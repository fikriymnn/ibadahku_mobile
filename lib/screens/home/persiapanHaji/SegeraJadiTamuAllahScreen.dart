import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../widgets/customAppBar.dart';

class SegeraJadiTamuAllahScreen extends StatefulWidget {
  const SegeraJadiTamuAllahScreen({super.key});

  @override
  State<SegeraJadiTamuAllahScreen> createState() =>
      _SegeraJadiTamuAllahScreenState();
}

class _SegeraJadiTamuAllahScreenState extends State<SegeraJadiTamuAllahScreen> {
  late TabController _tabController;
  double sizeHeading = 17;
  double sizeTitle = 16;
  double sizeAyat = 16;
  double sizeArti = 14;

  final double maxHeading = 27;
  final double maxTitle = 26;
  final double maxAyat = 26;
  final double maxArti = 24;

  final double minHeading = 13;
  final double minTitle = 12;
  final double minAyat = 12;
  final double minArti = 10;

  void _uppSize() {
    setState(() {
      if (sizeTitle < maxTitle) sizeTitle++;
      if (sizeAyat < maxAyat) sizeAyat++;
      if (sizeArti < maxArti) sizeArti++;
      if (sizeHeading < maxHeading) sizeHeading++;
    });
  }

  void _downSize() {
    setState(() {
      if (sizeTitle > minTitle) sizeTitle--;
      if (sizeAyat > minAyat) sizeAyat--;
      if (sizeArti > minArti) sizeArti--;
      if (sizeHeading > minHeading) sizeHeading--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(title: "Segera Jadi Tamu Allah", height: 56),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Text(
                  //     style: TextStyle(fontSize: sizeHeading),
                  //     "Haji merupakan Rukun Islam ke-5 sekaligus amalan wajib bagi muslim yang mampu. Banyak keutamaan yang terkandung dari ibadah haji. Keutamaan-keutamaan Haji diantaranya :"),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: keutamaanHaji.length,
                        itemBuilder: (BuildContext context, int index) {
                          return buildCondition(
                              context: context,
                              number: "${index + 1}",
                              Penjelasan: keutamaanHaji[index]["penjelasan"],
                              ayat: keutamaanHaji[index]["ayat"],
                              artinya: keutamaanHaji[index]["arti"],
                              sizePenjelasan: sizeTitle,
                              sizeAyat: sizeAyat,
                              sizeArti: sizeArti);
                        }),
                  ),
                ],
              ),
            )),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  _uppSize();
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryColor, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.text_increase,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  _downSize();
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryColor, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.text_decrease,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildCondition({
    required BuildContext context,
    required String number,
    required String Penjelasan,
    required String ayat,
    required String artinya,
    double sizePenjelasan = 16,
    double sizeAyat = 16,
    double sizeArti = 14,
    String risiko = "",
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$Penjelasan',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: sizePenjelasan,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: ayat == "" ? 0 : 10.0),
                    ayat == ""
                        ? Container()
                        : Text(
                            '$ayat',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: sizeAyat),
                          ),
                    SizedBox(height: artinya == "" ? 0 : 10.0),
                    artinya == ""
                        ? Container()
                        : Text('$artinya',
                            style: TextStyle(fontSize: sizeArti)),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),

        //Text('Risiko kesehatan: $risiko'),
        // const SizedBox(height: 16.0),
      ],
    );
  }

  List keutamaanHaji = [
    {
      "penjelasan":
          "Seorang yang memiliki kemampuan untuk melaksanakan ibadah haji maka hendaknya dia segera melaksanakan ibadah haji. Dia berusaha menyempurnakan rukun Islām yang lima.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Sungguh indah seorang yang bertemu dengan Allāh dan ternyata dia telah menyempurnakan rukun Islām yang lima. Dia sudah bersyahadat, dia sudah shalāt, dia sudah zakat, dia sudah puasa dan dia juga sudah berhaji.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan": "Nabi shallallāhu ‘alayhi wa sallam bersabda :",
      "ayat":
          "مَنْ أَرَادَ الْحَجَّ فَلْيَتَعَجَّلْ فَإِنَّهُ قَدْ يَمْرَضُ الْمَرِيْضُ وَتَضِلُّ الضَالَّةُ وَتَعْرِضُ الْحَاجَةُ",
      "arti":
          "Artinya: Barangsiapa ingin berhaji maka bersegeralah, karena sesungguhnya bisa jadi seorang itu sakit, bisa jadi tunggangannya yang dia gunakan untuk berhaji ternyata hilang (tidak bisa dia gunakan lagi artinya ada halangan), bisa jadi ada kebutuhan yang datang (sehingga dia tidak bisa berhaji).” (HR Ibnu Majah No. 2874 dan dishahihkan oleh Al-Albani namun dilemahkan oleh sebagian ulama)"
    },
    {
      "penjelasan":
          "Maka, seseorang bila sudah mempunyai uang, segera dia daftar, dia berazam kepada Allāh Subhānahu wa Ta’āla. Kalau dia tunda-tunda dia tidak tahu dikemudian hari mungkin dia sakit, mungkin dia meninggal dunia, mungkin dia punya kebutuhan yang lain.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Bisa jadi tiba-tiba dia dihadapkan dengan kondisi-kondisi yang sulit sehingga akhirnya uangnya harus dia gunakan untuk memenuhi kondisi-kondisi tersebut sehingga tidak bisa berhaji. Seseorang tidak tahu apa yang akan datang dan terjadi di esok hari. Maka jika dia memiliki kemampuan hendaknya dia bersegera berhaji memenuhi panggilan Allāh Subhānahu wa Ta’āla, menjadi tamu-tamu Allāh Subhānahu wa Ta’āla.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Terlebih lagi sebagian daerah di negeri kita daftar tunggunya hingga 20 tahun lebih. Bahkan di sebagian negara Islam daftar tunggunya hingga 40 tahun. Bisa jadi seseorang mendaftar untuk haji, tatkala namanya keluar dia telah lebih dahulu dipanggil Allah. Akan tetapi barangsiapa yang sudah mendaftarkan dirinya semoga ia tetap memperoleh pahala haji, karena dia sudah berusaha.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Memang para ulamā berbeda pendapat tentang apakah kewajiban haji itu kewajiban عَلَى الْفَوْرِ (harus segera dilakukan) ataukah عَلَى التَّرَاخِي (bisa ditunda)?",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Jumhūr ulamā berpendapat bahwasanya kewajiban haji itu harus segera, berbeda dengan pendapat ulamā Syāfi’iyah yang mengatakan عَلَى التَّرَاخِي (bisa ditunda) tidak mengapa.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Pendapat yang kuat adalah pendapat jumhūr ulamā bahwasanya kewajiban haji itu harus segera dilakukan. Artinya jika seseorang mampu untuk berhaji telah memiliki kemampuan fisiknya kuat dan uangnya juga ada.Maka hendaknya dia segera melaksanakan ibadah haji dan dia tidak menunda-nundanya. Karena dia tidak tahu apa yang akan dia hadapi dikemudian hari -sebagaimana telah disebutkan dalam hadits di atas-.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Lagi pula secara logis bahwasanya namanya perintah harusnya segera kita laksanakan. Oleh karenanya, Allāh Subhānahu wa Ta’āla memberi hukuman kepada Iblīs tatkala disuruh sujud kepada Ādam dia menolak. Kenapa ?, Karena dia harus segera bersujud kepada Ādam. Tatkala dia menolak untuk segera sujud kepada Adam, maka Allāh tidak memberi kesempatan bagi dia (Iblīs) untuk sujud di lain waktu, maka Allāh menghukum Iblīs yang menolak untuk bersujud kepada Ādam tatkala itu.",
      "ayat": "",
      "arti": ""
    },
  ];
}
