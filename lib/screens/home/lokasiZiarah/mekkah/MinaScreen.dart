import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class MinaScreen extends StatefulWidget {
  const MinaScreen({super.key});

  @override
  State<MinaScreen> createState() => _MinaScreenState();
}

class _MinaScreenState extends State<MinaScreen> {
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
            text: "Mina",
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
                            image: AssetImage("assets/mina.jpg"),
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
          "Mina adalah sebuah lembah yang terletak di antara kota Mekkah dan Muzdalifah, sekitar 7 kilometer sebelah timur laut dari Masjidil Haram. Mina merupakan salah satu tempat suci yang sangat penting dalam pelaksanaan ibadah haji. Di sinilah para jemaah haji melaksanakan beberapa ritual utama selama pelaksanaan haji, termasuk melontar jumrah, bermalam di Mina (mabit), dan penyembelihan hewan kurban.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "Pasilitas dan Tenda di Mina",
      "penjelasan":
          "Setiap musim haji, Mina berubah menjadi kota besar sementara yang terdiri dari tenda-tenda besar yang dapat menampung jutaan jemaah haji. Tenda-tenda ini dirancang untuk memberikan tempat tinggal yang nyaman selama mabit di Mina, dengan fasilitas seperti penyejuk udara, sanitasi, dan layanan kesehatan.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Mina juga memiliki akses jalan yang baik dan sistem transportasi yang memadai untuk membantu pergerakan jemaah antara Mina, Muzdalifah, dan Mekkah selama pelaksanaan ibadah haji. Terowongan dan jembatan juga dibangun untuk memudahkan pergerakan jemaah dalam melaksanakan prosesi melontar jumrah di lokasi yang terletak di Mina.",
      "ayat": "",
      "arti": "",
      "img": "assets/mina-2.jpg"
    },
    {
      "no": "",
      "title": "Mina Jadid",
      "penjelasan":
          "Mina Jadid atau Mina Baru adalah bagian dari wilayah Mina yang digunakan untuk menampung para jemaah haji selama pelaksanaan ibadah haji. Sebutan Jadid dalam bahasa Arab berarti baru, sehingga Mina Jadid secara harfiah merujuk pada area baru yang ditambahkan atau diperluas dari wilayah Mina yang asli. Mina Jadid menjadi penting dalam konteks modernisasi fasilitas dan peningkatan kapasitas untuk menampung jumlah jemaah yang semakin meningkat setiap tahunnya.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "2",
      "title": "",
      "penjelasan":
          "Mina Jadid terletak di bagian yang agak lebih jauh dari pusat utama Mina yang bersejarah. Pengembangan ini dilakukan untuk mengakomodasi jumlah jemaah yang jauh lebih besar dibandingkan masa-masa sebelumnya. Sebagai bagian dari upaya pemerintah Arab Saudi untuk meningkatkan kualitas dan kapasitas fasilitas haji, Mina Jadid dilengkapi dengan berbagai infrastruktur modern seperti tenda-tenda besar yang lebih kokoh, sistem pendingin udara, fasilitas sanitasi yang memadai, serta layanan kesehatan dan keamanan.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Dengan semakin bertambahnya jumlah jemaah yang datang dari seluruh dunia, area Mina yang asli tidak lagi mencukupi untuk menampung mereka semua, terutama di musim puncak haji ketika jutaan orang harus bermalam di Mina untuk menjalankan ritual mabit (bermalam) dan melempar jumrah. Oleh karena itu, Mina Jadid dibangun untuk memperluas kapasitas penginapan dan memberikan kenyamanan yang lebih baik bagi para jemaah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
