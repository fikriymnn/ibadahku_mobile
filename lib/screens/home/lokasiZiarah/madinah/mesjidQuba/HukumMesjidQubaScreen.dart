import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class HukumMesjidQubaScreen extends StatefulWidget {
  const HukumMesjidQubaScreen({super.key});

  @override
  State<HukumMesjidQubaScreen> createState() => _HukumMesjidQubaScreenState();
}

class _HukumMesjidQubaScreenState extends State<HukumMesjidQubaScreen> {
  late TabController _tabController;
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
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 200,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           image: AssetImage("assets/peta_miqat.jpg"),
                  //           fit: BoxFit.cover)),
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
                              img: keutamaanHaji[index]["img"],
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
    required String img,
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
                    SizedBox(height: title == "" ? 0 : 10.0),
                    Text(
                      '$Penjelasan',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: sizePenjelasan,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: Penjelasan == "" ? 0 : 10.0),
                    ayat == ""
                        ? Container()
                        : Text(
                            '$ayat',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: sizeAyat),
                          ),
                    SizedBox(height: ayat == "" ? 0 : 10.0),
                    artinya == ""
                        ? Container()
                        : Text('$artinya',
                            style: TextStyle(fontSize: sizeArti)),
                    SizedBox(
                      height: ayat == "" ? 0 : 10,
                    ),
                    img == ""
                        ? Container()
                        : Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(img), fit: BoxFit.cover)),
                          ),
                    SizedBox(
                      height: img == "" ? 0 : 10,
                    ),
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
      "no": "1",
      "title": "Sholat Sunnah di Masjid Quba",
      "penjelasan":
          "Hukum sholat di Masjid Quba adalah sunnah muakkadah (sunnah yang sangat dianjurkan). Sholat di Masjid Quba sangat dianjurkan karena Nabi Muhammad ﷺ secara rutin mengunjungi masjid ini dan menunaikan sholat di sana. Ini didukung oleh hadits berikut:",
      "ayat":
          "كَانَ النَّبِىُّ – صلى الله عليه وسلم – يَأْتِى قُبَاءً رَاكِبًا وَمَاشِيًا",
      "arti":
          "Nabi shallallahu ‘alaihi wa sallam biasa mendatangi Masjid Quba’ sambil memakai kendaraan, dan (kadang) berjalan kaki. (HR. Bukhari dan Muslim)",
      "img": ""
    },
    {
      "no": "2",
      "title": "Sholat dengan Bersuci (Wudhu) dari Rumah",
      "penjelasan":
          "Salah satu keutamaan khusus terkait sholat di Masjid Quba adalah jika seseorang berangkat ke masjid ini dalam keadaan sudah bersuci (wudhu) dari rumah, maka pahalanya akan setara dengan pahala umrah. Hal ini dijelaskan dalam hadits:",
      "ayat":
          "مَنْ تَطَهَّرَ فِى بَيْتِهِ ثُمَّ أَتَى مَسْجِدَ قُبَاءٍ فَصَلَّى فِيهِ صَلاَةً كَانَ لَهُ كَأَجْرِ عُمْرَةٍ",
      "arti":
          "Siapa yang bersuci di rumahnya, lalu ia mendatangi masjid Quba’, lantas ia melaksanakan shalat di dalamnya, maka pahalanya seperti pahala umrah. (HR. Tirmidzi, Ibnu Majah, dan An-Nasa'i)",
      "img": ""
    },
    {
      "no": "3",
      "title": "Jenis Sholat yang Dikerjakan di Masjid Quba",
      "penjelasan":
          "Sholat yang dianjurkan untuk dikerjakan di Masjid Quba adalah sholat sunnah. Nabi Muhammad ﷺ biasa melaksanakan sholat sunnah dua rakaat saat berkunjung ke Masjid Quba. Tidak ada batasan atau ketentuan khusus mengenai jenis sholat sunnah yang harus dikerjakan, tetapi sholat sunnah mutlak atau sholat sunnah yang tidak terkait waktu tertentu sering dianjurkan.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
