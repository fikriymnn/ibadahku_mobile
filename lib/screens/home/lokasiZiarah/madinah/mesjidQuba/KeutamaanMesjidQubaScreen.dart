import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KeutamaanMesjidQubaScreen extends StatefulWidget {
  const KeutamaanMesjidQubaScreen({super.key});

  @override
  State<KeutamaanMesjidQubaScreen> createState() =>
      _KeutamaanMesjidQubaScreenState();
}

class _KeutamaanMesjidQubaScreenState extends State<KeutamaanMesjidQubaScreen> {
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
      "no": "0",
      "title": "",
      "penjelasan":
          "Keutamaan Masjid Quba disebutkan dalam beberapa hadits dan ayat Al-Qur'an, yang menegaskan pahala besar bagi siapa saja yang melaksanakan ibadah di sana. Berikut adalah penjelasan lebih mendetail tentang keutamaan Masjid Quba yang didukung oleh hadits dan ayat Al-Qur'an:",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Pahala Setara dengan Umrah",
      "penjelasan":
          "Salah satu keutamaan terbesar dari Masjid Quba adalah bahwa orang yang melaksanakan shalat di sana setelah bersuci (wudhu) akan mendapatkan pahala yang setara dengan pahala umrah. Ini disebutkan dalam hadits berikut:",
      "ayat":
          "مَنْ تَطَهَّرَ فِى بَيْتِهِ ثُمَّ أَتَى مَسْجِدَ قُبَاءٍ فَصَلَّى فِيهِ صَلاَةً كَانَ لَهُ كَأَجْرِ عُمْرَةٍ",
      "arti":
          "Siapa yang bersuci di rumahnya, lalu ia mendatangi masjid Quba’, lantas ia melaksanakan shalat di dalamnya, maka pahalanya seperti pahala umrah. (HR. Tirmidzi, Ibnu Majah, dan An-Nasa'i)",
      "img": ""
    },
    {
      "no": "2",
      "title": "Kebiasaan Nabi Muhammad ﷺ Mengunjungi Masjid Quba",
      "penjelasan":
          "Nabi Muhammad ﷺ secara rutin mengunjungi Masjid Quba, baik dengan berjalan kaki atau berkendara. Ini menunjukkan betapa pentingnya masjid ini di mata Nabi ﷺ. Dalam hadits yang diriwayatkan oleh Abdullah bin Umar radhiyallahu 'anhu, disebutkan:",
      "ayat":
          "كَانَ النَّبِىُّ – صلى الله عليه وسلم – يَأْتِى قُبَاءً رَاكِبًا وَمَاشِيًا",
      "arti":
          "Nabi shallallahu ‘alaihi wa sallam biasa mendatangi Masjid Quba’ sambil memakai kendaraan, dan (kadang) berjalan kaki. (HR. Bukhari dan Muslim)",
      "img": ""
    },
    {
      "no": "3",
      "title": "Tempat yang Disukai Allah",
      "penjelasan":
          "Dalam Surah At-Taubah ayat 108 , ada frasa yang menjelaskan bahwa Masjid Quba dihuni oleh orang-orang yang mencintai kebersihan. Allah menyukai orang-orang yang membersihkan diri, baik secara lahir maupun batin. Ini menekankan pentingnya menjaga kesucian, baik jasmani maupun rohani, saat beribadah di Masjid Quba.",
      "ayat":
          "لَا تَقُمْ فِيْهِ اَبَدًاۗ لَمَسْجِدٌ اُسِّسَ عَلَى التَّقْوٰى مِنْ اَوَّلِ يَوْمٍ اَحَقُّ اَنْ تَقُوْمَ فِيْهِۗ فِيْهِ رِجَالٌ يُّحِبُّوْنَ اَنْ يَّتَطَهَّرُوْاۗ وَاللّٰهُ يُحِبُّ الْمُطَّهِّرِيْنَ",
      "arti":
          "Artinya: Janganlah engkau melaksanakan salat di dalamnya (masjid itu) selama-lamanya. Sungguh, masjid yang didirikan atas dasar takwa sejak hari pertama lebih berhak engkau melaksanakan salat di dalamnya. Di dalamnya ada orang-orang yang gemar membersihkan diri. Allah menyukai orang-orang yang membersihkan diri.",
      "img": ""
    },
  ];
}
