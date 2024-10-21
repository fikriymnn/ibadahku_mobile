import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class MesjidAlQiblatainScreen extends StatefulWidget {
  const MesjidAlQiblatainScreen({super.key});

  @override
  State<MesjidAlQiblatainScreen> createState() =>
      _MesjidAlQiblatainScreenState();
}

class _MesjidAlQiblatainScreenState extends State<MesjidAlQiblatainScreen> {
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
            text: "Mesjid Al-Qiblatain",
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
                            image: AssetImage("assets/peta_miqat.jpg"),
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
          "Masjid Al-Qiblatain adalah salah satu masjid yang memiliki makna sejarah penting dalam Islam. Terletak di Madinah, Arab Saudi, Masjid Al-Qiblatain memiliki sejarah khusus karena menjadi tempat di mana perintah Allah untuk mengubah arah kiblat dari Masjid Al-Aqsa di Yerusalem ke Ka'bah di Mekah pertama kali diumumkan kepada Nabi Muhammad ﷺ.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Kata Al-Qiblatain berarti dua kiblat, karena di sinilah terjadi peristiwa penting pengalihan arah kiblat. Awalnya, umat Islam saat shalat menghadap ke Baitul Maqdis (Masjid Al-Aqsa) di Yerusalem. Namun, pada tahun kedua Hijriah, Allah SWT menurunkan wahyu yang memerintahkan perubahan arah kiblat ke Ka'bah di Mekah. Perubahan ini terjadi ketika Nabi Muhammad ﷺ dan para sahabatnya sedang melaksanakan shalat di Masjid Bani Salamah, yang kemudian dikenal sebagai Masjid Al-Qiblatain.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Perintah perubahan kiblat diabadikan dalam Al-Qur'an, yaitu dalam Surah Al-Baqarah ayat 144, di mana Allah SWT menyampaikan perintah untuk mengalihkan arah kiblat ke Ka'bah:",
      "ayat":
          "قَدْ نَرٰى تَقَلُّبَ وَجْهِكَ فِى السَّمَاۤءِۚ فَلَنُوَلِّيَنَّكَ قِبْلَةً تَرْضٰىهَاۖ فَوَلِّ وَجْهَكَ شَطْرَ الْمَسْجِدِ الْحَرَامِۗ وَحَيْثُ مَا كُنْتُمْ فَوَلُّوْا وُجُوْهَكُمْ شَطْرَهٗۗ وَاِنَّ الَّذِيْنَ اُوْتُوا الْكِتٰبَ لَيَعْلَمُوْنَ اَنَّهُ الْحَقُّ مِنْ رَّبِّهِمْۗ وَمَا اللّٰهُ بِغَافِلٍ عَمَّا يَعْمَلُوْنَ",
      "arti":
          "Artinya: Sungguh, Kami melihat wajahmu (Nabi Muhammad) sering menengadah ke langit. Maka, pasti akan Kami palingkan engkau ke kiblat yang engkau sukai. Lalu, hadapkanlah wajahmu ke arah Masjidilharam. Di mana pun kamu sekalian berada, hadapkanlah wajahmu ke arah itu. Sesungguhnya orang-orang yang diberi kitab benar-benar mengetahui bahwa (pemindahan kiblat ke Masjidilharam) itu adalah kebenaran dari Tuhan mereka. Allah tidak lengah terhadap apa yang mereka kerjakan.",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Perubahan kiblat ini terjadi di tengah shalat yang sedang dilaksanakan oleh Nabi Muhammad ﷺ bersama para sahabat. Dalam hadits yang diriwayatkan oleh Al-Bukhari dan Muslim, dijelaskan bahwa:",
      "ayat": "",
      "arti":
          "Ketika Nabi Muhammad ﷺ sedang shalat bersama para sahabat di Masjid Bani Salamah (sekarang Masjid Al-Qiblatain), turunlah wahyu yang memerintahkan beliau untuk memindahkan arah kiblat ke Ka'bah. Beliau pun kemudian berputar arah saat shalat, dan para sahabat mengikuti beliau, sehingga arah kiblat berubah saat shalat itu juga.",
      "img": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Masjid Al-Qiblatain memiliki keistimewaan historis sebagai tempat di mana wahyu tentang perubahan kiblat diturunkan. Selain menjadi simbol penting dalam sejarah Islam, masjid ini juga menjadi salah satu tempat yang sering dikunjungi oleh jamaah haji dan umrah sebagai bagian dari ziarah mereka di Madinah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
