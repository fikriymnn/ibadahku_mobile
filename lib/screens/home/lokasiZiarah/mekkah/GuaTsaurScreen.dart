import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class GuaTsaurScreen extends StatefulWidget {
  const GuaTsaurScreen({super.key});

  @override
  State<GuaTsaurScreen> createState() => _GuaTsaurScreenState();
}

class _GuaTsaurScreenState extends State<GuaTsaurScreen> {
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
            text: "Gua Hiro",
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
                            image: AssetImage("assets/tsaur.jpg"),
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
          "Gua Tsur (غار ثور) adalah tempat yang sangat penting dalam sejarah Islam, terutama karena berperan dalam peristiwa Hijrah Nabi Muhammad SAW dari Mekah ke Madinah. Gua ini terletak di Jabal Tsur, sebuah gunung yang terletak sekitar 7 kilometer di selatan Kota Mekah. Gua Tsur dikenal sebagai tempat di mana Nabi Muhammad SAW dan sahabatnya, Abu Bakar Ash-Shiddiq RA, berlindung dari pengejaran kaum Quraisy selama tiga hari saat dalam perjalanan hijrah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "Sejarah Gua Tsur dalam Peristiwa Hijrah",
      "penjelasan":
          "Gua Tsur memiliki kaitan erat dengan salah satu peristiwa penting dalam sejarah Islam, yaitu Hijrah. Hijrah adalah perpindahan Nabi Muhammad SAW dan para pengikutnya dari Mekah ke Madinah (saat itu bernama Yatsrib) pada tahun 622 M. Peristiwa ini terjadi karena tekanan, penindasan, dan ancaman pembunuhan yang dilakukan oleh kaum Quraisy kepada Nabi Muhammad dan umat Islam yang tinggal di Mekah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Mengetahui bahwa kaum Quraisy berencana untuk membunuhnya, Nabi Muhammad SAW memutuskan untuk berhijrah ke Madinah atas perintah Allah SWT. Bersama sahabatnya, Abu Bakar Ash-Shiddiq RA, Nabi Muhammad SAW meninggalkan Mekah secara diam-diam pada malam hari.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Kaum Quraisy, yang menyadari rencana ini, segera mengirim pasukan untuk mengejar dan menangkap Nabi. Untuk menghindari kejaran mereka, Nabi Muhammad SAW dan Abu Bakar berlindung di Gua Tsur selama tiga hari. Pada saat itulah, sebuah mukjizat terjadi, yang menunjukkan perlindungan Allah SWT terhadap Rasul-Nya.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Lokasi dan Kondisi Gua Tsur",
      "penjelasan":
          "Jabal Tsur atau Gunung Tsur memiliki ketinggian sekitar 760 meter di atas permukaan laut, dan untuk mencapai Gua Tsur, pengunjung harus mendaki gunung yang cukup terjal. Lokasi gua ini berada di salah satu sisi gunung, dan untuk mencapainya memerlukan stamina yang kuat, mengingat jalur pendakiannya yang berbatu dan menanjak. Gua Tsur sendiri tidak terlalu besar, namun cukup untuk menampung Nabi Muhammad SAW dan Abu Bakar saat mereka bersembunyi.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Meskipun pendakian menuju Gua Tsur cukup berat, banyak umat Islam yang mengunjunginya sebagai ziarah sejarah ketika melaksanakan ibadah haji atau umrah. Mereka datang untuk mengenang peristiwa penting ini dan mengambil pelajaran dari kisah ketabahan, kesabaran, dan keyakinan yang ditunjukkan oleh Nabi Muhammad SAW dan Abu Bakar.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Mukjizat di Gua Tsur",
      "penjelasan":
          "Menurut riwayat yang termuat dalam berbagai kitab sejarah dan hadis, kaum Quraisy hampir menemukan Nabi Muhammad SAW dan Abu Bakar di Gua Tsur. Namun, Allah SWT melindungi mereka dengan cara yang luar biasa. Ketika kaum Quraisy tiba di mulut gua, mereka melihat ada sarang laba-laba yang menutupi pintu gua, serta dua burung merpati yang sedang bertelur di dekatnya. Melihat tanda-tanda ini, mereka berasumsi bahwa tidak mungkin ada orang yang baru masuk ke dalam gua tersebut, karena sarang laba-laba dan burung merpati itu tampak tidak terganggu.",
      "ayat":
          "اِلَّا تَنْصُرُوْهُ فَقَدْ نَصَرَهُ اللّٰهُ اِذْ اَخْرَجَهُ الَّذِيْنَ كَفَرُوْا ثَانِيَ اثْنَيْنِ اِذْ هُمَا فِى الْغَارِ اِذْ يَقُوْلُ لِصَاحِبِهٖ لَا تَحْزَنْ اِنَّ اللّٰهَ مَعَنَاۚ فَاَنْزَلَ اللّٰهُ سَكِيْنَتَهٗ عَلَيْهِ وَاَيَّدَهٗ بِجُنُوْدٍ لَّمْ تَرَوْهَا وَجَعَلَ كَلِمَةَ الَّذِيْنَ كَفَرُوا السُّفْلٰىۗ وَكَلِمَةُ اللّٰهِ هِيَ الْعُلْيَاۗ وَاللّٰهُ عَزِيْزٌ حَكِيْمٌ",
      "arti":
          "Artinya: Jika kamu tidak menolongnya (Nabi Muhammad), sungguh Allah telah menolongnya, (yaitu) ketika orang-orang kafir mengusirnya (dari Makkah), sedangkan dia salah satu dari dua orang, ketika keduanya berada dalam gua, ketika dia berkata kepada sahabatnya, “Janganlah engkau bersedih, sesungguhnya Allah bersama kita.” Maka, Allah menurunkan ketenangan kepadanya (Nabi Muhammad), memperkuatnya dengan bala tentara (malaikat) yang tidak kamu lihat, dan Dia menjadikan seruan orang-orang kafir itu seruan yang paling rendah. (Sebaliknya,) firman Allah itulah yang paling tinggi. Allah Mahaperkasa lagi Mahabijaksana.(QS. At-Taubah: 40)",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Dalam ayat ini, Allah SWT mengisyaratkan tentang keberadaan tentara-Nya yang tidak terlihat, termasuk mukjizat berupa sarang laba-laba dan burung merpati, yang membuat kaum Quraisy tidak menyadari bahwa Nabi dan Abu Bakar berada di dalam gua tersebut.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
