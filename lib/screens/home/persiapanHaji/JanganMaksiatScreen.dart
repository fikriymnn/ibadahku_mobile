import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../widgets/customAppBar.dart';

class JanganMaksiatScreen extends StatefulWidget {
  const JanganMaksiatScreen({super.key});

  @override
  State<JanganMaksiatScreen> createState() => _JanganMaksiatScreenState();
}

class _JanganMaksiatScreenState extends State<JanganMaksiatScreen> {
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
        appBar: CustomAppbar(title: "Jangan Maksiat", height: 56),
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
          "Larangan berbuat maksiat saat melaksanakan ibadah haji merupakan salah satu prinsip penting yang harus dipegang oleh setiap Muslim. Maksiat secara umum merujuk kepada segala bentuk perbuatan dosa atau tindakan yang melanggar perintah Allah SWT. Dalam konteks ibadah haji, menjaga diri dari maksiat menjadi sangat krusial, karena ibadah ini adalah salah satu momen paling suci dalam kehidupan seorang Muslim, di mana mereka berada dalam kondisi yang sangat dekat dengan Allah dan berada di tempat-tempat yang dianggap paling mulia di muka bumi.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Maksiat selama ibadah haji bisa muncul dalam berbagai bentuk. Beberapa bentuk kemaksiatan yang perlu dihindari selama haji antara lain:",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "1",
      "title": "Perbuatan Zalim atau Menyakiti Orang Lain",
      "penjelasan":
          "Ibadah haji melibatkan jutaan umat Islam dari berbagai negara, dengan latar belakang budaya dan kebiasaan yang berbeda-beda. Dalam kondisi ini, potensi untuk menimbulkan gesekan atau konflik dengan orang lain cukup besar. Oleh karena itu, berbuat zalim, baik secara fisik (menyakiti atau menzalimi orang lain) maupun secara verbal (menghina, mencaci, atau berkata kasar) adalah bentuk maksiat yang sangat dilarang. Rasulullah SAW bersabda:",
      "ayat": "الْمُسْلِمُ مَنْ سَلِمَ الْمُسْلِمُونَ مِنْ لِسَانِهِ وَيَدِهِ",
      "arti":
          "Artinya: Seorang muslim adalah muslim yang selamat dari gangguan lisannya dan tangannya (HR. Bukhari)."
    },
    {
      "no": "1",
      "title": "Kemudian Hadis lainnya berkata:",
      "penjelasan": "",
      "ayat":
          "مَنْ كَانَ يُؤْمِنُ بِاللّٰهِ وَالْيَوْمِ الْآخِرِ فَلْيَقُلْ خَيْرًا أَوْ لِيَصْمُتْ",
      "arti":
          "Artinya: Barangsiapa yang Beriman Kepada Allah dan Hari Akhir Maka Hendaknya dia Berkata yang Baik atau Diam (HR. Bukhari)."
    },
    {
      "no": "2",
      "title": "Melakukan Tindakan Tidak Jujur atau Curang",
      "penjelasan":
          "Kejujuran adalah salah satu prinsip dasar dalam Islam, dan dalam kondisi haji, nilai ini menjadi lebih penting. Segala bentuk kecurangan, seperti mengambil hak orang lain atau melakukan penipuan dalam bentuk apapun, dianggap sebagai perbuatan fasik yang dilarang selama ibadah haji.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "3",
      "title": "Meninggalkan Kewajiban Ibadah atau Melalaikan Ibadah",
      "penjelasan":
          "Meninggalkan kewajiban ibadah atau melalaikan ibadah yang seharusnya dilakukan selama haji juga termasuk dalam perbuatan maksiat. Misalnya, lalai dalam melaksanakan shalat, baik karena keletihan atau alasan lainnya, atau tidak melaksanakan rangkaian ibadah haji sesuai tuntunan, dianggap sebagai bentuk kemaksiatan yang dapat merusak kesempurnaan haji.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "4",
      "title": "Perbuatan Zina atau Perbuatan yang Menjerumuskan kepada Zina",
      "penjelasan":
          "Salah satu bentuk maksiat yang juga sangat dilarang selama haji adalah zina, atau perbuatan-perbuatan yang mendekati zina. Dalam kondisi ihram, larangan ini menjadi lebih tegas, karena para jemaah berada dalam keadaan yang sangat suci dan sakral. Allah SWT berfirman:",
      "ayat":
          "وَلَا تَقْرَبُوا الزِّنٰىٓ اِنَّهٗ كَانَ فَاحِشَةًۗ وَسَاۤءَ سَبِيْلًا",
      "arti":
          "Artinya: Janganlah kamu mendekati zina. Sesungguhnya (zina) itu adalah perbuatan keji dan jalan terburuk."
    },
    {
      "no": "4",
      "title": "",
      "penjelasan":
          "Oleh karena itu, menjaga pandangan, perkataan, dan tindakan agar tidak mendekati perbuatan-perbuatan yang mengarah kepada zina atau maksiat seksual adalah bagian penting dari menjaga kesucian diri selama haji.",
      "ayat": "",
      "arti": ""
    },
  ];
}
