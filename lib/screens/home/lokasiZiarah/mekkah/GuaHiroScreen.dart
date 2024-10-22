import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class GuaHiroScren extends StatefulWidget {
  const GuaHiroScren({super.key});

  @override
  State<GuaHiroScren> createState() => _GuaHiroScrenState();
}

class _GuaHiroScrenState extends State<GuaHiroScren> {
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
                            image: AssetImage("assets/gua-hira.jpeg"),
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
          "Gua Hira adalah sebuah tempat bersejarah yang memiliki makna spiritual sangat penting dalam agama Islam. Terletak di Jabal Nur (Gunung Cahaya), sekitar 3-4 kilometer di sebelah timur laut dari Masjidil Haram, Mekah, Gua Hira menjadi tempat di mana Nabi Muhammad SAW pertama kali menerima wahyu dari Allah SWT melalui Malaikat Jibril. Peristiwa ini menandai awal dari risalah kenabian Nabi Muhammad dan awal mula turunnya Al-Qur'an.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "Sejarah Gua Hira",
      "penjelasan":
          "Muzdalifah adalah sebuah dataran yang terletak sekitar 5 kilometer di sebelah barat Arafah dan sekitar 7 kilometer dari Mina. Secara geografis, tempat ini berada di antara dua tempat penting dalam ibadah haji, yaitu Arafah dan Mina, dan menjadi persinggahan wajib bagi jemaah haji setelah wukuf di Arafah. Datarannya relatif terbuka dan tidak memiliki bangunan atau tenda seperti di Mina, sehingga jemaah biasanya tidur di tempat terbuka di bawah langit malam.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Gua Hira memiliki peran yang sangat penting dalam sejarah Islam, terutama karena di tempat inilah wahyu pertama diturunkan. Sebelum peristiwa tersebut, Nabi Muhammad SAW sering menyendiri di gua ini untuk beribadah, merenung, dan mencari kedamaian. Dalam masyarakat Mekah saat itu, yang masih banyak melakukan penyembahan berhala, Nabi Muhammad merasa resah terhadap keadaan masyarakatnya dan ingin mencari kebenaran yang lebih dalam tentang makna kehidupan dan keberadaan Tuhan.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Di gua ini, Nabi Muhammad SAW menjalani kehidupan penuh kontemplasi, jauh dari hiruk-pikuk kota Mekah. Pada usia 40 tahun, tepatnya pada malam Lailatul Qadr di bulan Ramadhan, beliau mendapatkan wahyu pertama dari Allah SWT yang disampaikan melalui Malaikat Jibril. Peristiwa ini dijelaskan dalam Al-Qur'an:",
      "ayat":
          "اِقْرَأْ بِاسْمِ رَبِّكَ الَّذِيْ خَلَقَۚ(1)خَلَقَ الْاِنْسَانَ مِنْ عَلَقٍۚ(2)اِقْرَأْ وَرَبُّكَ الْاَكْرَمُۙ(3)الَّذِيْ عَلَّمَ بِالْقَلَمِۙ(4)عَلَّمَ الْاِنْسَانَ مَا لَمْ يَعْلَمْۗ(5)",
      "arti":
          "Artinya: (1)Bacalah dengan (menyebut) nama Tuhanmu yang menciptakan! (2)Dia menciptakan manusia dari segumpal darah. (3)Bacalah! Tuhanmulah Yang Mahamulia, (4)yang mengajar (manusia) dengan pena. (5)Dia mengajarkan manusia apa yang tidak diketahuinya. (QS. Al-‘Alaq: 1-5)",
      "img": ""
    },
    {
      "no": "1",
      "title": "Lokasi dan Kondisi Gua Hira",
      "penjelasan":
          "Gua Hira terletak di puncak Jabal Nur, yang memiliki ketinggian sekitar 640 meter di atas permukaan laut. Untuk mencapai gua ini, pengunjung harus mendaki gunung yang cukup curam dan memakan waktu sekitar 1-2 jam tergantung kondisi fisik. Pendakian ini memerlukan stamina yang cukup karena jalurnya berbatu dan terjal.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Ukuran gua ini relatif kecil, hanya mampu menampung beberapa orang di dalamnya. Lebarnya sekitar 1,75 meter dan panjangnya sekitar 3,5 meter. Gua ini menghadap ke arah utara dan menawarkan pemandangan yang indah ke arah Kota Mekah, termasuk ke arah Ka'bah. Meskipun kecil, gua ini menjadi tempat yang sangat bermakna bagi umat Islam karena di sinilah wahyu pertama Al-Qur'an diturunkan.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
