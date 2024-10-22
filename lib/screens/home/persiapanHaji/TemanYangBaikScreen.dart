import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class TemanYangBaikScreen extends StatefulWidget {
  const TemanYangBaikScreen({super.key});

  @override
  State<TemanYangBaikScreen> createState() => _TemanYangBaikScreenState();
}

class _TemanYangBaikScreenState extends State<TemanYangBaikScreen> {
  double sizeHeading = 18;
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
        appBar: AppBar(
          centerTitle: false,
          title: TextWidget(
            text: "Teman Yang Baik",
            color: whiteColor,
            textSize: 20,
            isTitle: true,
          ),
          backgroundColor: primaryColor,
          /* actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: whiteColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: whiteColor,
                )),
          ], */
        ),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: sizeHeading, fontWeight: FontWeight.bold),
                      "Mencari teman yang baik dalam perjalanan"),
                  SizedBox(
                    height: 10,
                  ),
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
          "Memiliki teman yang baik selama menunaikan ibadah haji adalah salah satu aspek penting yang dapat memperkaya pengalaman spiritual dan ibadah seseorang. Ibadah haji adalah perjalanan yang penuh dengan tantangan fisik, mental, dan spiritual. Dalam kondisi seperti ini, keberadaan teman yang baik dan saleh sangat membantu, baik dalam menjaga semangat ibadah, saling mengingatkan dalam kebaikan, serta memberikan dukungan ketika menghadapi kesulitan. Islam sangat menekankan pentingnya memilih teman yang baik karena teman dapat memberikan pengaruh yang besar terhadap perilaku dan sikap seseorang, terutama dalam ibadah yang membutuhkan kekhusyukan dan kesabaran seperti haji.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Selama menjalankan ibadah haji, seseorang tidak hanya memerlukan kekuatan fisik, tetapi juga dukungan spiritual dan mental. Di sinilah peran teman yang baik menjadi sangat penting. Teman yang baik adalah teman yang dapat membantu menjaga ketenangan hati, mengingatkan untuk selalu taat kepada Allah, serta memberikan nasihat yang baik ketika diperlukan. Teman yang baik juga akan mengingatkan kita untuk menjalankan seluruh rangkaian ibadah haji dengan ikhlas dan penuh ketaatan kepada Allah, tanpa tergoda untuk melakukan hal-hal yang tidak dianjurkan selama berada di tanah suci.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Menjalani ibadah haji tidak hanya membutuhkan kekuatan spiritual, tetapi juga kekuatan fisik dan mental. Kondisi yang melelahkan seperti saat melakukan tawaf, sa'i, dan perjalanan menuju Arafah, Mina, dan Muzdalifah bisa sangat menguras tenaga. Dalam situasi ini, teman yang baik akan selalu memberikan dukungan, saling tolong-menolong, dan berbagi beban.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Salah satu tantangan dalam ibadah haji adalah menjaga diri dari hal-hal yang bisa merusak ibadah, seperti debat, amarah, atau perilaku yang tidak sesuai dengan adab dalam haji. Teman yang baik akan selalu mengingatkan kita untuk bersabar, menghindari perselisihan, dan tetap tenang dalam menghadapi situasi yang menantang.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Ibadah haji adalah kesempatan besar untuk memperbanyak amal kebaikan, seperti sedekah, berdoa, memperbanyak dzikir, dan berbuat baik kepada sesama. Teman yang baik akan selalu mendorong kita untuk tidak melewatkan kesempatan ini. Mereka akan mengajak untuk berlomba-lomba dalam kebaikan dan memperbaiki kualitas ibadah selama di Tanah Suci.",
      "ayat": "",
      "arti": ""
    },
  ];
}
