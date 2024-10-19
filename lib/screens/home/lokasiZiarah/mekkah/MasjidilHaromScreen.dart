import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class MasjidilHaromScreen extends StatefulWidget {
  const MasjidilHaromScreen({super.key});

  @override
  State<MasjidilHaromScreen> createState() => _MasjidilHaromScreenState();
}

class _MasjidilHaromScreenState extends State<MasjidilHaromScreen> {
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
            text: "Masjidil Harom",
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
                  Text(
                      style: TextStyle(fontSize: sizeHeading),
                      "Masjidil Haram, yang terletak di Mekkah, Arab Saudi, adalah salah satu tempat paling suci dan paling dihormati dalam ajaran Islam. Masjid ini mengelilingi Ka'bah, yang menjadi arah kiblat bagi umat Islam di seluruh dunia saat melaksanakan salat. Keutamaan Masjidil Haram sangat besar, baik dari sisi sejarah, spiritualitas, maupun perintah agama yang terkandung dalam Al-Qur'an dan Hadis. Masjid ini bukan hanya menjadi pusat ibadah, tetapi juga simbol persatuan umat Islam yang menyatukan seluruh Muslim di berbagai belahan dunia."),
                  SizedBox(
                    height: 20,
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
          height: ayat == "" ? 0 : 20,
        )

        //Text('Risiko kesehatan: $risiko'),
        // const SizedBox(height: 16.0),
      ],
    );
  }

  List keutamaanHaji = [
    {
      "no": "1",
      "title": "Tempat Pertama yang Dijadikan Rumah Ibadah",
      "penjelasan":
          "Masjidil Haram memiliki nilai sejarah yang sangat tinggi dalam ajaran Islam karena menjadi tempat pertama yang dijadikan rumah ibadah bagi manusia. Allah SWT berfirman dalam Al-Qur'an:",
      "ayat":
          "اِنَّ اَوَّلَ بَيْتٍ وُّضِعَ لِلنَّاسِ لَلَّذِيْ بِبَكَّةَ مُبٰرَكًا وَّهُدًى لِّلْعٰلَمِيْنَۚ",
      "arti":
          "Artinya: Sesungguhnya rumah (ibadah) pertama yang dibangun untuk manusia adalah (Baitullah) yang (berada) di Bakkah (Makkah) yang diberkahi dan menjadi petunjuk bagi seluruh alam (QS. Ali Imran: 96)."
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Ayat ini menegaskan bahwa Ka'bah di Masjidil Haram merupakan tempat ibadah pertama yang dibangun untuk manusia. Tempat ini telah diberkahi Allah dan menjadi pusat petunjuk bagi umat manusia. Hal ini menunjukkan betapa agung dan pentingnya Masjidil Haram sebagai pusat spiritual dan sejarah dalam Islam.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "2",
      "title": "Kiblat Seluruh Umat Islam",
      "penjelasan":
          "Ka'bah yang terletak di Masjidil Haram merupakan arah kiblat bagi seluruh Muslim saat melaksanakan salat. Hal ini merupakan salah satu keutamaan besar dari Masjidil Haram karena setiap kali seorang Muslim di seluruh dunia melaksanakan salat, mereka menghadap ke arah Masjidil Haram, sebagaimana diperintahkan oleh Allah SWT dalam Al-Qur'an:",
      "ayat":
          "وَمِنْ حَيْثُ خَرَجْتَ فَوَلِّ وَجْهَكَ شَطْرَ الْمَسْجِدِ الْحَرَامِۗ وَحَيْثُ مَا كُنْتُمْ فَوَلُّوْا وُجُوْهَكُمْ شَطْرَهٗۙ لِئَلَّا يَكُوْنَ لِلنَّاسِ عَلَيْكُمْ حُجَّةٌ اِلَّا الَّذِيْنَ ظَلَمُوْا مِنْهُمْ فَلَا تَخْشَوْهُمْ وَاخْشَوْنِيْ وَلِاُتِمَّ نِعْمَتِيْ عَلَيْكُمْ وَلَعَلَّكُمْ تَهْتَدُوْنَۙ",
      "arti":
          "Artinya: Dari mana pun engkau (Nabi Muhammad) keluar, maka hadapkanlah wajahmu ke arah Masjidilharam. Di mana saja kamu berada, maka hadapkanlah wajahmu ke arahnya agar tidak ada alasan bagi manusia (untuk menentangmu), kecuali orang-orang yang zalim di antara mereka. Maka, janganlah kamu takut kepada mereka, tetapi takutlah kepada-Ku agar Aku sempurnakan nikmat-Ku kepadamu dan agar kamu mendapat petunjuk (QS. Al-Baqarah: 150)."
    },
    {
      "no": "",
      "title": "",
      "penjelasan":
          "Perintah ini menjadikan Masjidil Haram sebagai pusat dari seluruh ibadah salat yang dilakukan oleh Muslim, tidak peduli di mana mereka berada. Ini juga menjadi simbol persatuan umat Islam, karena meskipun mereka tersebar di seluruh dunia, mereka semua menghadap ke arah yang sama dalam ibadah mereka.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "3",
      "title": "Pusat Ibadah Haji dan Umrah",
      "penjelasan":
          "Masjidil Haram juga merupakan pusat dari pelaksanaan ibadah haji dan umrah, dua ritual penting dalam ajaran Islam. Haji adalah rukun Islam kelima yang wajib dilaksanakan oleh setiap Muslim yang mampu, dan sebagian besar rangkaian ibadah haji dilaksanakan di Masjidil Haram dan sekitarnya. Terdapat berbagai ritual penting yang dilakukan di Masjidil Haram, seperti tawaf (mengelilingi Ka'bah), sa'i (berjalan antara Safa dan Marwah), dan berdoa di depan Multazam (dinding antara Hajar Aswad dan pintu Ka'bah). Allah SWT memerintahkan umat Islam untuk melaksanakan haji dalam Al-Qur'an:",
      "ayat":
          "وَاَذِّنْ فِى النَّاسِ بِالْحَجِّ يَأْتُوْكَ رِجَالًا وَّعَلٰى كُلِّ ضَامِرٍ يَّأْتِيْنَ مِنْ كُلِّ فَجٍّ عَمِيْقٍۙ",
      "arti":
          "Artinya: (Wahai Ibrahim, serulah manusia untuk (mengerjakan) haji, niscaya mereka akan datang kepadamu dengan berjalan kaki dan mengendarai unta kurus yang datang dari segenap penjuru yang jauh (QS. Al-Hajj: 27)."
    },
    {
      "no": "4",
      "title": "Tempat yang Dijaga oleh Allah",
      "penjelasan":
          "Masjidil Haram juga memiliki keutamaan sebagai tempat yang dijaga dan dilindungi oleh Allah SWT. Dalam Al-Qur'an, Allah menyebutkan bahwa Dia akan menjaga Masjidil Haram dari segala bentuk serangan dan kehancuran. Salah satu peristiwa yang menggambarkan hal ini adalah peristiwa penyerangan oleh pasukan gajah yang dipimpin oleh Abrahah, yang ingin menghancurkan Ka'bah. Allah mengabadikan peristiwa ini dalam surat Al-Fil:",
      "ayat":
          "(2) اَلَمْ تَرَ كَيْفَ فَعَلَ رَبُّكَ بِاَصْحٰبِ الْفِيْلِۗ(1) اَلَمْ يَجْعَلْ كَيْدَهُمْ فِيْ تَضْلِيْلٍۙ",
      "arti":
          "Apakah kamu tidak memperhatikan bagaimana Tuhanmu telah bertindak terhadap tentara bergajah? Bukankah Dia telah menjadikan tipu daya mereka itu sia-sia?(QS. Al-Fil: 1-2)"
    },
  ];
}
