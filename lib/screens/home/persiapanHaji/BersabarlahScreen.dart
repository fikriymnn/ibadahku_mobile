import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../widgets/customAppBar.dart';

class BersabarScreen extends StatefulWidget {
  const BersabarScreen({super.key});

  @override
  State<BersabarScreen> createState() => _BersabarScreenState();
}

class _BersabarScreenState extends State<BersabarScreen> {
  double sizeHeading = 17;
  double sizeTitle = 16;
  double sizeAyat = 16;
  double sizeArti = 14;

  void _uppSize() {
    setState(() {
      sizeTitle++;
      sizeAyat++;
      sizeArti++;
      sizeHeading++;
    });
  }

  void _downSize() {
    setState(() {
      sizeTitle--;
      sizeAyat--;
      sizeArti--;
      sizeHeading--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(title: "Bersabar", height: 56),
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
          "Ibadah haji merupakan puncak ibadah bagi umat Islam. Namun, di balik keistimewaannya, haji juga menjadi ujian kesabaran yang luar biasa. Mulai dari proses pendaftaran, persiapan keberangkatan, hingga pelaksanaan ibadah di Tanah Suci, setiap tahapannya menuntut kesabaran yang tinggi. Kesabaran ini tidak hanya sekedar menahan diri dari emosi negatif, tetapi juga melibatkan sikap menerima dengan lapang dada segala kondisi yang dihadapi.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Ujian kesabaran dalam haji sangat beragam. Mulai dari kesabaran menunggu panggilan untuk berangkat haji, kesabaran menghadapi cuaca ekstrem di Arab Saudi, kesabaran dalam berdesakan di tempat-tempat ibadah, hingga kesabaran dalam menghadapi rindu kepada keluarga. Selain itu, kesabaran juga diuji dalam hal menjalankan ibadah dengan benar sesuai tuntunan syariat, meskipun dalam kondisi yang melelahkan.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Di balik ujian kesabaran yang berat, terdapat hikmah yang sangat mendalam. Salah satu hikmahnya adalah semakin meningkatnya keimanan dan ketaqwaan kepada Allah SWT. Ketika seorang hamba mampu bersabar dalam menghadapi segala cobaan, maka ia akan semakin yakin akan kebesaran dan kuasa Allah SWT. Selain itu, kesabaran juga dapat membentuk karakter yang lebih kuat, sabar, dan ikhlas.",
      "ayat": "",
      "arti": ""
    },
  ];
}
