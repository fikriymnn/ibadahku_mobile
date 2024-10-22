import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class PenjelasanDzikirPagiDanPetang extends StatefulWidget {
  const PenjelasanDzikirPagiDanPetang({super.key});

  @override
  State<PenjelasanDzikirPagiDanPetang> createState() =>
      _PenjelasanDzikirPagiDanPetangState();
}

class _PenjelasanDzikirPagiDanPetangState
    extends State<PenjelasanDzikirPagiDanPetang> {
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
      "title": "Waktu Dzikir Pagi",
      "penjelasan": "Ada beberapa pendapat mengenai batasan waktu dzikir pagi:",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title":
          "Pendapat Pertama:dimulai dari terbitnya fajar hingga matahari terbit.",
      "penjelasan":
          "Inilah pendapat Syaikhul Islam Ibnu Taimiyah dalam Al Kalimuth Thoyyib, Ibnul Qoyyim dalam Al Wabilush Shoyyihb, Muhammad bin Ahmad bin Salim As Safarini Al Hambali dalam kitabnya Ghidza-ul Albaab li Syarh Manzhumatul Aadab, dan Sayyid Sabiq dalam Fiqhus Sunnah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title":
          "Pendapat kedua: dimulai dari terbit fajar hingga waktu zawal (matahari bergeser ke barat).",
      "penjelasan":
          "Inilah pendapat Al Lajnah Ad Daimah dalam fatawanya dan menjadi pendapat Syaikh Muhammad bin Sholeh All ‘Utsaimin dalam kajian Liqo’ Al Bab Al Maftuh.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title":
          "Pendapat ketiga: dimulai dari terbitnya fajar hingga matahari tenggelam.",
      "penjelasan":
          "Demikian pendapat Ibnul Jazaari falam kitabnya Mafatih Al Hishn dan pendapat Asy Syaukani dalam Tuhfatudz Dzaakirin.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Pendapat yang menyatakan bahwa waktu dzikir pagi adalah mulai dari terbit fajar hingga waktu zawal, itulah yang lebih kuat. Mengenai batasan akhir waktu dzikir pagi tidak ditegaskan dalam dalil, sehingga dikembalikan ke dalam bahasa Arab yaitu apa yang dimaksud akhir waktu pagi. Begitu pula karena waktu masaa’ (sore atau petang) dimulai dari waktu zawal, maka waktu pagi berakhir hingga zawal. Sedangkan dalam dalil hadits ditunjukkan pula bahwa setelah matahari terbit pun masih disebut pagi. Sehingga ketika matahari terbit bukanlah batasan waktu dzikir pagi.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Waktu Dzikir Petang",
      "penjelasan":
          "Dalam masalah waktu dzikir petang juga terdapat perbedaan pendapat di kalangan para ulama.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title":
          "Pendapat pertama: dimulai dari waktu zawal (matahari tergelincir ke barat) hingga matahari tenggelam dan awal malam.",
      "penjelasan":
          "Inilah pendapat Al Lajnah Ad Daimah dalam fatwanya dan pendapat Syaikh ‘Abdul ‘Aziz bin ‘Abdillah bin Baz selaku ketua Al Lajnah Ad Daimah dan mufti Saudi Arabia di masa silam.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Pendapat kedua: dimulai dari ‘Ashar hingga Maghrib.",
      "penjelasan":
          "Inilah pendapat Imam Nawawi dalam Al Adzkar, Ibnu Taimiyah dalam Al Kalimuth Thoyyib, Ibnul Wayyim dalam Al Wabilush Shoyyib, Syaikh Muhammad bin Ahmad bin Salim As Safarini Al Hambali dalam kitabnya Ghidza-ul Albaab li Syarh Manzhumatul Aadab, dan Sayyid Sabiq dalam Fiqhus Sunnah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title":
          "Pendapat ketiga: dimulai dari waktu zawal hingga pertengahan malam.",
      "penjelasan":
          "Inilah pendapat As Suyuthi yang dinukil oleh Ibnu ‘Allan dalam Al Futuhat Ar Robbaniyyah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title":
          "Pendapat keempat: dimulai dari tenggelamnya matahari hingga terbit fajar (waktu Shubuh).",
      "penjelasan":
          "Demikian pendapat Ibnul Jazari, Asy Syaukani, Ibnu Hajar Al Haitami, dan Syaikh Abul Hasan ‘Ubaidullah Al Mubarakfuri.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Pendapat yang terkuat dalam masalah ini, waktu dzikir petang dimulai dari tenggelamnya matahari dan berakhir hingga batas terakhir shalat ‘Isya, yaitu pertengahan malam. Yang menjadi dalil kuat bahwa awal waktu dzikir petang dimulai dari tenggelamnya matahari adalah ayat,",
      "ayat":
          "فَسُبْحٰنَ اللّٰهِ حِيْنَ تُمْسُوْنَ وَحِيْنَ تُصْبِحُوْنَ(17)وَلَهُ الْحَمْدُ فِى السَّمٰوٰتِ وَالْاَرْضِ وَعَشِيًّا وَّحِيْنَ تُظْهِرُوْنَ(18)",
      "arti":
          "Artinya: Bertasbihlah kepada Allah ketika kamu berada pada waktu senja dan waktu pagi.(17) Segala puji hanya bagi-Nya di langit dan di bumi, pada waktu petang dan pada saat kamu berada pada waktu siang.(18) (QS. Ar-Rum:17-18)",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Dalil lain yang menunjukkan masaa’ yang dimaksud adalah setelah matahari tenggelam yaitu hadits berikut dari ‘Abdullah bin Abi Aufa, ia berkata,",
      "ayat":
          "الْقَوْمِ « يَا فُلاَنُ قُمْ ، فَاجْدَحْ لَنَا » . فَقَالَ يَا رَسُولَ اللَّهِ ، لَوْ أَمْسَيْتَ . قَالَ « انْزِلْ ، فَاجْدَحْ لَنَا » . قَالَ يَا رَسُولَ اللَّهِ فَلَوْ أَمْسَيْتَ . قَالَ « انْزِلْ ، فَاجْدَحْ لَنَا » . قَالَ إِنَّ عَلَيْكَ نَهَارًا . قَالَ « انْزِلْ ، فَاجْدَحْ لَنَا » . فَنَزَلَ فَجَدَحَ لَهُمْ ، فَشَرِبَ النَّبِىُّ – صلى الله عليه وسلم – ثُمَّ قَالَ « إِذَا رَأَيْتُمُ اللَّيْلَ قَدْ أَقْبَلَ مِنْ هَا هُنَا ، فَقَدْ أَفْطَرَ الصَّائِمُ »",
      "arti":
          "Kami pernah bersama Rasulullah shallallahu ‘alaihi wa sallam dalam safar, ketika matahari tenggelam, ia berkata pada sebagian kaum, “Wahai fulan, bangun dan siapkanlah minuman buat kami”. Orang yang disuruh itu berkata, “Wahai Rasulullah, bagaimana jika Anda menunggu hingga masaa’”. Beliau berkata: “Turunlah dan siapkan minuman buat kami”. Orang itu berkata, lagi, “Wahai Rasulullah, bagaimana jika Anda  menunggu hingga masaa’”. Beliau berkata, lagi, “Turunlah dan siapkan minuman buat kami”. Orang itu berkata, lagi, “Sekarang masih nahaar”. Beliau kembali berkata, “Turunlah dan siapkan minuman buat kami”. Maka orang itu turun lalu menyiapkan minuman buat mereka. Setelah minum lalu Nabi shallallahu ‘alaihi wa sallam berkata, “Apabila kalian telah melihat malam sudah datang dari arah sana (timur) maka orang yang puasa sudah boleh berbuka. (HR. Bukhari no. 1955).",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Lihatlah dalam hadits ini dibedakan antara nahaar dan masaa’. Masaa’ dalam hadits ini dijadikan bagian dari malam hari, berbeda dengan nahaar. Waktu masaa’ menunjukkan waktu untuk berbuka puasa. Sehingga tidaklah tepat yang menganggap waktu masaa’ dimulai setelah zawal atau dari waktu ‘Ashar.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Kita pun dapat melihat dalam hadits dzikir petang, secara tegas disebut pula waktunya yaitu setelah Maghrib. Dari Abu Ayyub Al Anshori, Rasulullah shallallahu ‘alaihi wa sallam bersabda,",
      "ayat":
          "مَنْ قَالَ إِذَا صَلَّى الصُّبْحَ لاَ إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَىْءٍ قَدِيرٌ عَشْرَ مَرَّاتٍ كُنَّ كَعَدْلِ أَرْبَعِ رِقَابٍ وَكُتِبَ لَهُ بِهِنَّ عَشْرُ حَسَنَاتٍ وَمُحِىَ عَنْهُ بِهِنَّ عَشْرُ سَيِّئَاتٍ وَرُفِعَ لَهُ بِهِنَّ عَشْرُ دَرَجَاتٍ وَكُنَّ لَهُ حَرَساً مِنَ الشَّيْطَانِ حَتَّى يُمْسِىَ وَإِذَا قَالَهَا بَعْدَ الْمَغْرِبِ فَمِثْلُ ذَلِكَ",
      "arti":
          "Barangsiapa yang shalat shubuh lantas ia mengucapkan “laa ilaha illallah wahdahu laa syarika lah lahul mulku wa lahul hamdu wa huwa ‘ala kulli syai-in qodiir” sebanyak 10 kali maka ia seperti membebaskan 4 budak, dicatat baginya 10 kebaikan, dihapuskan baginya 10 kejelekan, lalu diangkat 10 derajat untuknya, dan ia pun akan terlindungi dari gangguan setan hingga waktu petang (masaa’). Jika ia menyebut dzikir yang sama setelah Maghrib, maka ia akan mendapatkan keutamaan semisal itu. (HR. Ahmad 5: 415. Syaikh Syu’aib Al Arnauth berkata bahwa hadits ini shahih –dilihat dari jalur lain-).",
      "img": ""
    },
  ];
}
