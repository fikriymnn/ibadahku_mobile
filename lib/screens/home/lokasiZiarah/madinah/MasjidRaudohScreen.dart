import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class MasjidRaudohScreen extends StatefulWidget {
  const MasjidRaudohScreen({super.key});

  @override
  State<MasjidRaudohScreen> createState() => _MasjidRaudohScreenState();
}

class _MasjidRaudohScreenState extends State<MasjidRaudohScreen> {
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
            text: "Raudhah",
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
                            image: AssetImage("assets/raudhah.png"),
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
          "Masjid Raudhah sebenarnya bukanlah masjid yang terpisah, melainkan bagian dari Masjid Nabawi yang memiliki keutamaan luar biasa. Raudhah adalah area di dalam Masjid Nabawi yang terletak di antara mimbar dan rumah Rasulullah SAW (yang sekarang menjadi makam beliau). Bagian ini dikenal sebagai salah satu tempat paling suci dan istimewa di dalam Islam, dan umat Muslim yang berziarah ke Madinah sangat berkeinginan untuk berdoa di Raudhah karena keutamaannya yang luar biasa.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "Lokasi Raudhah",
      "penjelasan":
          "Saat ini, area Raudhah ditandai dengan karpet hijau, berbeda dengan bagian lain dari Masjid Nabawi yang dilapisi karpet merah. Ini memudahkan jamaah untuk mengenali letaknya. Meski tidak besar, Raudhah menjadi tempat yang sangat dihormati dan diinginkan oleh para jamaah untuk berdoa dan memohon kepada Allah SWT.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Makna Raudhah",
      "penjelasan":
          "Dalam bahasa Arab, Raudhah berarti taman, dan dalam konteks Masjid Nabawi, Raudhah sering disebut sebagai taman dari taman-taman surga. Ini menunjukkan bahwa tempat ini memiliki kedekatan spiritual yang sangat tinggi dan dianggap sebagai tempat di mana doa-doa lebih mudah dikabulkan oleh Allah SWT.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Para ulama menafsirkan bahwa ungkapan taman dari taman-taman surga bukan hanya bermakna secara harfiah, tetapi juga menandakan keistimewaan spiritual dan kekhususan tempat tersebut. Beberapa ulama menyebut bahwa ini adalah tempat di mana rahmat Allah sangat melimpah dan keberkahan diturunkan kepada umat yang beribadah di sana.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "Keutamaan Sholat dan Berdoa di Raudha",
      "penjelasan":
          "Karena Raudhah adalah bagian dari Masjid Nabawi yang disebut sebagai taman surga, umat Muslim sangat dianjurkan untuk memperbanyak ibadah di sana. Banyak jamaah yang berusaha melaksanakan shalat sunnah, berdoa, dan memohon ampun di Raudhah, dengan keyakinan bahwa doa-doa yang dipanjatkan di tempat ini memiliki peluang besar untuk dikabulkan.",
      "ayat":
          "وَعَنِ اِبْنِ اَلزُّبَيْرِ رَضِيَ اَللَّهُ عَنْهُمَا قَالَ: قَالَ رَسُولُ اَللَّهِ ( { صَلَاةٌ فِي مَسْجِدِي هَذَا أَفْضَلُ مِنْ أَلْفِ صَلَاةٍ فِيمَا سِوَاهُ إِلَّا اَلْمَسْجِدَ اَلْحَرَامَ , وَصَلَاةٌ فِي اَلْمَسْجِدِ اَلْحَرَامِ أَفْضَلُ مِنْ صَلَاةٍ فِي مَسْجِدِي بِمِائَةِ صَلَاةٍ } رَوَاهُ أَحْمَدُ, وَصَحَّحَهُ اِبْنُ حِبَّانَ",
      "arti":
          "Dari Ibnu Az-Zubair bahwa Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Sekali shalat di masjidku ini lebih utama daripada 1000 kali shalat di masjid lainnya kecuali Masjidil Haram dan sekali shalat di Masjidil Haram lebih utama daripada 100 kali shalat di masjidku ini.” (Diriwayatkan oleh Imam Ahmad, hadits ini sahih menurut Ibnu Hibban) [HR. Ahmad, 26:41-42; Ibnu Hibban, 1620. Sanad hadits ini sahih].",
      "img": ""
    },
    {
      "no": "1",
      "title": "Adab dan Etika di Raudhah",
      "penjelasan":
          "Mengingat kesucian tempat ini, para jamaah diharapkan untuk memelihara adab dan etika selama berada di Raudhah. Karena tempatnya relatif kecil dan sangat ramai oleh jamaah dari seluruh dunia, penting untuk menjaga ketertiban dan kesopanan, serta menghormati sesama jamaah yang juga ingin beribadah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Di Raudhah, jamaah sering kali berlomba-lomba untuk bisa beribadah di sana karena keutamaannya, tetapi menjaga ketenangan dan fokus dalam ibadah sangat dianjurkan. Adab dalam berdoa, menjaga hati yang ikhlas, dan tidak menyakiti jamaah lain juga sangat penting.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
