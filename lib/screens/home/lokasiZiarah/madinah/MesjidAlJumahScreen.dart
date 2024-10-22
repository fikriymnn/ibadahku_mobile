import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class MesjidAlJumahScreen extends StatefulWidget {
  const MesjidAlJumahScreen({super.key});

  @override
  State<MesjidAlJumahScreen> createState() => _MesjidAlJumahScreenState();
}

class _MesjidAlJumahScreenState extends State<MesjidAlJumahScreen> {
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
        appBar: AppBar(
          centerTitle: false,
          title: TextWidget(
            text: "Mesjid Al-Jum'ah",
            color: whiteColor,
            textSize: 20,
            isTitle: true,
          ),
          backgroundColor: primaryColor,
          actions: [
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
          ],
        ),
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
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/masjid-jumah.jpg"),
                            fit: BoxFit.cover)),
                  ),
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
            // title == ""
            //     ? Container()
            //     : Text(
            //         '$number.',
            //         style: TextStyle(
            //             fontSize: sizeTitle, fontWeight: FontWeight.bold),
            //       ),
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
                  ],
                ),
              ),
            ),
          ],
        ),
        Text(
          '$Penjelasan',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: sizePenjelasan, fontWeight: FontWeight.normal),
        ),
        SizedBox(height: Penjelasan == "" ? 0 : 10.0),
        ayat == ""
            ? Container()
            : Text(
                '$ayat',
                textDirection: TextDirection.rtl,
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: sizeAyat),
              ),
        SizedBox(height: ayat == "" ? 0 : 10.0),
        artinya == ""
            ? Container()
            : Text('$artinya', style: TextStyle(fontSize: sizeArti)),
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
          "Masjid Al-Jum'ah adalah salah satu masjid bersejarah di Madinah, Arab Saudi. Masjid ini memiliki hubungan erat dengan peristiwa hijrah Nabi Muhammad ﷺ dari Mekah ke Madinah. Masjid ini dinamakan Masjid Al-Jum'ah karena di sinilah Rasulullah ﷺ melaksanakan sholat Jum'at pertama kali setelah tiba di Madinah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Ketika Nabi Muhammad ﷺ hijrah dari Mekah ke Madinah, beliau berhenti sejenak di sebuah tempat yang dikenal sebagai Wadi Ranuna, yang terletak di wilayah Bani Salim bin Auf. Pada hari Jumat, Rasulullah ﷺ bersama para sahabat berhenti di tempat ini untuk menunaikan sholat Jum'at. Karena itulah, masjid ini dikenal sebagai Masjid Al-Jum'ah, dan tempat ini dikenang sebagai lokasi di mana Nabi ﷺ melaksanakan sholat Jum'at pertama dalam sejarah Islam. Allah berfirman dalam Al-Quran Surat Al-Jumu'ah Ayat 9 :",
      "ayat":
          "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْٓا اِذَا نُوْدِيَ لِلصَّلٰوةِ مِنْ يَّوْمِ الْجُمُعَةِ فَاسْعَوْا اِلٰى ذِكْرِ اللّٰهِ وَذَرُوا الْبَيْعَۗ ذٰلِكُمْ خَيْرٌ لَّكُمْ اِنْ كُنْتُمْ تَعْلَمُوْنَ",
      "arti":
          "Artinya: Wahai orang-orang yang beriman, apabila (seruan) untuk melaksanakan salat pada hari Jumat telah dikumandangkan, segeralah mengingat Allah dan tinggalkanlah jual beli. Yang demikian itu lebih baik bagimu jika kamu mengetahui. (QS Al-Jumuah : 9)",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Masjid Al-Jum'ah memiliki peran penting dalam sejarah Islam sebagai tempat dilaksanakannya sholat Jum'at pertama oleh Nabi Muhammad ﷺ setelah hijrah. Meskipun tidak ada hadits khusus yang menyebutkan keutamaan sholat di masjid ini, Masjid Al-Jum'ah memiliki nilai sejarah yang tinggi dan menjadi simbol awal kewajiban sholat Jum'at. Ayat Al-Qur'an dalam Surah Al-Jumu'ah menegaskan pentingnya sholat Jum'at bagi umat Islam, menjadikannya sebagai ibadah wajib yang harus dilaksanakan setiap pekan.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
