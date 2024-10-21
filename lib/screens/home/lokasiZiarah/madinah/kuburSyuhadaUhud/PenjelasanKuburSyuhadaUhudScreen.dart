import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class PenjelasanKuburSyuhadaUhudScreen extends StatefulWidget {
  const PenjelasanKuburSyuhadaUhudScreen({super.key});

  @override
  State<PenjelasanKuburSyuhadaUhudScreen> createState() =>
      _PenjelasanKuburSyuhadaUhudScreenState();
}

class _PenjelasanKuburSyuhadaUhudScreenState
    extends State<PenjelasanKuburSyuhadaUhudScreen> {
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
          "Kuburan Baqi (juga dikenal sebagai Baqi' al-Gharqad) adalah salah satu tempat pemakaman yang paling terkenal dan penting di Madinah, Arab Saudi. Berikut adalah penjelasan mengenai sejarah, lokasi, dan keutamaan Kuburan Baqi:",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Sejarah",
      "penjelasan":
          "Kuburan Baqi dibangun pada masa Nabi Muhammad SAW dan merupakan tempat pemakaman bagi banyak sahabat, anggota keluarga, dan tokoh-tokoh penting lainnya dalam sejarah Islam.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Kuburan ini terletak di sebelah timur Masjid Nabawi, hanya beberapa ratus meter dari masjid. Tempat ini memiliki sejarah panjang dan menjadi bagian integral dari kehidupan masyarakat Madinah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Banyak sahabat Nabi, termasuk Umar bin Khattab, Uthman bin Affan, dan Ali bin Husain, dimakamkan di sini. Juga terdapat penguburan istri-istri Nabi, seperti Zainab dan Fatimah binti Muhammad.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": " Keutamaan",
      "penjelasan":
          "Ziarah ke Kuburan Baqi dianggap sebagai sunnah yang sangat dianjurkan. Mengunjungi kuburan ini adalah cara untuk mengingat kematian dan mendoakan mereka yang telah meninggal, serta mendapatkan pahala.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Di dalam Islam, mengunjungi kuburan merupakan salah satu cara untuk mendoakan arwah para mayit. Peziarah dianjurkan untuk membaca doa untuk mereka yang dimakamkan di Baqi.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Nabi Muhammad SAW mendorong umatnya untuk berziarah ke kuburan, termasuk kuburan di Baqi. Dalam sebuah hadis, beliau bersabda:",
      "ayat":
          "كُنْتُ نَهَيْتُكُمْ عَنْ زِيَارَةِ الْقُبُورِ أَلَا فَزُورُوهَا، فَإِنَّهُ يُرِقُّ الْقَلْبَ، وَتُدْمِعُ الْعَيْنَ، وَتُذَكِّرُ الْآخِرَةَ، وَلَا تَقُولُوا هُجْرً",
      "arti":
          "Dahulu saya melarang kalian berziarah kubur, tapi (sekarang) berziarahlah kalian, sesungguhnya ziarah kubur dapat melunakkan hati, menitikkan (air) mata, mengingatkan pada akhirat, dan janganlah kalian berkata buruk (pada saat ziarah). (HR Hakim).",
      "img": ""
    },
    {
      "no": "1",
      "title": "Kondisi Kuburan Baqi",
      "penjelasan":
          "Kuburan Baqi mengalami berbagai perubahan dan pemugaran dari waktu ke waktu. Setelah peristiwa-peristiwa penting dalam sejarah Islam, termasuk penyerangan oleh pihak tertentu yang menghancurkan bangunan di sekitarnya.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Saat ini, Kuburan Baqi adalah pemakaman umum, di mana banyak orang yang berziarah untuk mendoakan para mayit. Namun, bangunan atau monumen di atas kuburan telah dihapus untuk menghindari praktik yang dianggap sebagai bentuk syirik.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Ziarah dan Etika",
      "penjelasan":
          "Peziarah diharapkan menjaga adab dan tata krama saat berziarah, seperti mengucapkan salam kepada para mayit, berdoa untuk mereka, dan tidak melakukan tindakan yang tidak sesuai dengan syariat Islam.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Sebaiknya doa yang dibaca adalah doa untuk memohon ampunan bagi para mayit dan mendoakan mereka. Ziarah ini sebaiknya dilakukan dengan ikhlas, mengingat bahwa tujuan utamanya adalah untuk merenungkan kehidupan dan kematian.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
