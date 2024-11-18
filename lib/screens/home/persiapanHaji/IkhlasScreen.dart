import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../widgets/customAppBar.dart';

class IkhlasScreen extends StatefulWidget {
  const IkhlasScreen({super.key});

  @override
  State<IkhlasScreen> createState() => _IkhlasScreenState();
}

class _IkhlasScreenState extends State<IkhlasScreen> {
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
        appBar: CustomAppbar(title: "Ikhlas Dalam Haji", height: 56),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Text(
                  //     style: TextStyle(fontSize: sizeHeading),
                  //     "Menjaga keikhlasan dalam melaksanakan ibadah haji merupakan tantangan yang penting karena ibadah ini tidak hanya mengandalkan fisik, tetapi juga melibatkan hati dan niat. Keikhlasan memastikan bahwa ibadah haji yang dilakukan diterima oleh Allah Subhanahu wa Ta’ala.Lima tips untuk menjaga keikhlasan saat berhaji:"),
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
                              number: keutamaanHaji[index]["no"],
                              title: keutamaanHaji[index]["title"],
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
    required String title,
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
            title == ""
                ? Container()
                : Text(
                    '$number.',
                    style: TextStyle(
                        fontSize: sizeTitle, fontWeight: FontWeight.bold),
                  ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${title}',
                      style: TextStyle(
                          fontSize: sizeTitle, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: Penjelasan == "" ? 0 : 10.0),
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
      "no": "0",
      "title": "",
      "penjelasan":
          "Menjalankan ibadah haji dengan penuh keikhlasan adalah salah satu aspek terpenting dalam meraih ridha Allah Subhanahu wa Ta’ala. Setiap amalan dalam haji, mulai dari talbiyah, thawaf, sa’i, menyembelih hadyu, hingga melempar jumrah, semuanya menggambarkan kepatuhan dan ketulusan hati seorang muslim dalam beribadah.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Menjaga keikhlasan dalam melaksanakan ibadah haji merupakan tantangan yang penting karena ibadah ini tidak hanya mengandalkan fisik, tetapi juga melibatkan hati dan niat. Keikhlasan memastikan bahwa ibadah haji yang dilakukan diterima oleh Allah Subhanahu wa Ta’ala. Lima tips untuk menjaga keikhlasan saat berhaji:",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "1",
      "title": "Niatkan Haji Hanya untuk Allah",
      "penjelasan":
          "Pastikan sejak awal bahwa niat berhaji hanya untuk mencari ridha Allah Subhanahu wa Ta’ala, bukan untuk mendapatkan pujian atau pengakuan dari orang lain. Sebelum berangkat, luangkan waktu untuk berdoa dan meminta Allah agar memberikan kekuatan untuk menjalankan ibadah dengan ikhlas.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "2",
      "title": "Hindari Pamer (Riya’)",
      "penjelasan":
          "Selama di Tanah Suci, hindari sikap pamer atau riya’ dalam bentuk apapun, baik dalam ibadah maupun dalam berbagi cerita tentang pengalaman haji. Fokuskan diri pada ibadah dan berserah diri sepenuhnya kepada Allah. Ingat bahwa tujuan utama adalah mendekatkan diri kepada-Nya, bukan mendapatkan pengakuan dari sesama manusia.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "3",
      "title": "Bersyukur dan Sabar",
      "penjelasan":
          "Saat menjalani ibadah haji, banyak tantangan yang mungkin dihadapi, mulai dari cuaca ekstrem hingga kerumunan yang padat. Dalam situasi tersebut, bersyukur dan sabar adalah kunci untuk menjaga keikhlasan. Selalu ingat bahwa semua ujian ini merupakan bagian dari proses ibadah yang akan mendekatkan kita kepada Allah.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "4",
      "title": "Fokus pada Kualitas Ibadah, Bukan Kuantitas",
      "penjelasan":
          "Dalam berhaji, kualitas ibadah lebih penting daripada kuantitasnya. Alih-alih berlomba-lomba untuk melakukan banyak ibadah, fokuslah pada pelaksanaan ibadah yang dilakukan dengan penuh keikhlasan dan ketenangan. Dengan demikian, setiap ibadah yang dilakukan akan lebih bermakna dan diterima oleh Allah.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "5",
      "title": "Refleksi Diri Secara Berkala",
      "penjelasan":
          "Selama pelaksanaan ibadah haji, luangkan waktu untuk merenungkan niat dan tujuan dari setiap amalan yang dilakukan. Refleksi diri ini penting untuk memastikan bahwa setiap tindakan dilakukan semata-mata karena Allah. Dengan refleksi yang konsisten, Anda dapat terus memperbaiki niat dan menjaga keikhlasan dalam beribadah.",
      "ayat": "",
      "arti": ""
    },
  ];
}
