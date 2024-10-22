import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KesalahanKuburNabiScreen extends StatefulWidget {
  const KesalahanKuburNabiScreen({super.key});

  @override
  State<KesalahanKuburNabiScreen> createState() =>
      _KesalahanKuburNabiScreenState();
}

class _KesalahanKuburNabiScreenState extends State<KesalahanKuburNabiScreen> {
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
          "Berziarah ke makam Nabi Muhammad SAW di Masjid Nabawi, Madinah, merupakan salah satu ibadah yang sangat dianjurkan dalam Islam. Namun, ada beberapa kesalahan yang sering dilakukan oleh sebagian peziarah saat berziarah. Berikut adalah beberapa kesalahan umum yang perlu dihindari saat berziarah ke makam Nabi:",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Berdoa Langsung kepada Nabi",
      "penjelasan":
          "Salah satu kesalahan yang paling sering terjadi adalah berdoa langsung kepada Nabi Muhammad SAW, seolah-olah meminta pertolongan atau syafaat langsung dari beliau. Dalam Islam, doa hanya diperuntukkan kepada Allah SWT. Nabi Muhammad SAW memang memiliki kedudukan yang mulia, tetapi doa dan permohonan hanya boleh ditujukan kepada Allah.",
      "ayat":
          "وَّاَنَّ الْمَسٰجِدَ لِلّٰهِ فَلَا تَدْعُوْا مَعَ اللّٰهِ اَحَدًاۖ",
      "arti":
          "Artinya, Sesungguhnya masjid-masjid itu milik Allah. Maka, janganlah menyembah apa pun bersamaan dengan (menyembah) Allah.",
      "img": ""
    },
    {
      "no": "1",
      "title": "Menyentuh atau Mencium Pagar Makam Nabi",
      "penjelasan":
          "Sebagian peziarah ada yang menyentuh atau mencium pagar makam Nabi dengan keyakinan bahwa tindakan ini memiliki keutamaan atau akan mendatangkan berkah. Tindakan ini tidak didasarkan pada ajaran Islam dan dianggap sebagai bentuk perbuatan bid'ah (sesuatu yang tidak ada contoh dari Nabi SAW).",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Mengaitkan Keberkahan dengan Benda-Benda di Sekitar Makam",
      "penjelasan":
          "Ada yang berkeyakinan bahwa benda-benda di sekitar makam Nabi, seperti tiang, pagar, atau tanah, memiliki keberkahan tersendiri. Sebagian orang bahkan mengambil debu atau tanah di sekitar makam. Hal ini tidak ada dalilnya dalam syariat Islam dan bisa menjerumuskan pada perilaku syirik.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": " Membaca Doa-Doa yang Tidak Shahih",
      "penjelasan":
          "Beberapa peziarah membaca doa-doa yang tidak diajarkan oleh Rasulullah SAW, atau bahkan menggunakan kalimat-kalimat yang tidak shahih (tidak bersumber dari hadis sahih) saat berziarah. Doa-doa tersebut mungkin berupa pujian atau permintaan yang ditujukan kepada Nabi, yang tidak sesuai dengan ajaran Islam.",
      "ayat":
          "مَنْ أَحْدَثَ فِى أَمْرِنَا هَذَا مَا لَيْسَ مِنْهُ فَهُوَ رَدٌّ",
      "arti":
          "Barangsiapa membuat suatu perkara baru dalam urusan kami ini (urusan agama) yang tidak ada asalnya, maka perkara tersebut tertolak. (HR. Bukhari no. 2697 dan Muslim no. 1718)",
      "img": ""
    },
    {
      "no": "1",
      "title": "Berdesakan dan Kurangnya Adab dalam Berziarah",
      "penjelasan":
          "Saat berada di makam Nabi, adab harus dijaga. Namun, sebagian peziarah berdesakan, bersuara keras, atau bahkan mengabaikan etika dalam beribadah hanya demi mendekati makam Nabi. Seharusnya, saat berziarah tetap menjaga ketenangan, keheningan, dan adab yang sesuai dengan tempat suci tersebut.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
