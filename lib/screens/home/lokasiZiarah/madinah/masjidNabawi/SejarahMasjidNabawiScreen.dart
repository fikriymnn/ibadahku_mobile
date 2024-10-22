import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class SejarahMesjidNabawiScreen extends StatefulWidget {
  const SejarahMesjidNabawiScreen({super.key});

  @override
  State<SejarahMesjidNabawiScreen> createState() =>
      _SejarahMesjidNabawiScreenState();
}

class _SejarahMesjidNabawiScreenState extends State<SejarahMesjidNabawiScreen> {
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
      "title": "",
      "penjelasan":
          "Masjid Nabawi memiliki sejarah yang sangat penting dalam perkembangan Islam. Pembangunannya berkaitan erat dengan hijrah Rasulullah SAW ke Madinah dan berbagai peristiwa yang terjadi sepanjang kehidupan Nabi.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "Pembangunan Awal (Tahun 1 H/622 M)",
      "penjelasan":
          "Ketika Rasulullah SAW hijrah ke Madinah, salah satu tindakan pertama yang dilakukan adalah membangun masjid sebagai pusat ibadah dan kegiatan sosial umat Muslim. Rasulullah SAW memilih sebidang tanah milik dua anak yatim, Sahl dan Suhail, yang dibelinya untuk dijadikan tempat berdirinya masjid. Pembangunan dilakukan oleh Rasulullah bersama para sahabat secara bergotong royong. Pada awalnya, masjid ini sangat sederhana, dindingnya terbuat dari bata lumpur, atap dari daun kurma, dan tiangnya dari batang pohon kurma. Masjid ini menjadi pusat kegiatan ibadah, pendidikan, dan musyawarah bagi umat Islam yang baru berkembang di Madinah. Dari Anas bin Malik RA, ia berkata:",
      "ayat": "",
      "arti":
          "Ketika Rasulullah SAW tiba di Madinah, beliau memerintahkan untuk membangun masjid. Beliau bersabda, 'Wahai Bani Najjar, tentukanlah harga kebun kalian ini.' Mereka menjawab, 'Kami tidak meminta harganya kecuali dari Allah (kami mengikhlaskannya).' (HR. Bukhari)",
      "img": ""
    },
    {
      "no": "1",
      "title": "Lokasi Pembangunan",
      "penjelasan":
          "Tanah tempat masjid berdiri awalnya adalah milik dua anak yatim, Sahl dan Suhail. Rasulullah SAW membeli tanah tersebut, dan bersama para sahabat, beliau membangun masjid secara sederhana. Bangunan awal terdiri dari dinding yang terbuat dari bata lumpur, atap dari daun kurma, dan tiang dari batang pohon kurma. Ukuran masjid sekitar 30 x 35 meter.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Fungsi Masjid",
      "penjelasan":
          "Masjid Nabawi berfungsi sebagai tempat ibadah, tempat berkumpul, dan juga sebagai pusat pemerintahan dan pendidikan bagi masyarakat Madinah. Rasulullah SAW juga menggunakan masjid ini sebagai tempat bermusyawarah dengan para sahabat serta untuk menyampaikan khutbah dan mengajarkan Islam.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
