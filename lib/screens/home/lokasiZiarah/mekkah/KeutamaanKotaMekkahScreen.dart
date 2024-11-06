import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../../widgets/customAppBar.dart';

class KeutamaanKotaMekkahScreen extends StatefulWidget {
  const KeutamaanKotaMekkahScreen({super.key});

  @override
  State<KeutamaanKotaMekkahScreen> createState() =>
      _KeutamaanKotaMekkahScreenState();
}

class _KeutamaanKotaMekkahScreenState extends State<KeutamaanKotaMekkahScreen> {
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
        appBar: CustomAppbar(title: "Keutamaan Mekkah", height: 56),
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
          height: ayat == "" ? 0 : 20,
        )

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
          "Setiap kaum Muslimin mengetahui, Mekkah merupakan tempat yang sangat mulia. Setiap muslim memiliki impian untuk bisa menjejakkan kaki di kota itu. Baik untuk mengerjakan ibadah haji ataupun umrah saja. Kerinduan bertandang ke sana tetap besar, terlebih bagi orang yang pernah merasakan kenikmatan berada di kota suci tersebut.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Keutamaan yang disandang kota suci Mekkah, dapat dilihat dalam dalil-dalil Qur`an ataupun as Sunnah shahihah. Kota Mekkah tidak seperti kota-kota lain di atas bumi ini. Kota ini menyandang kemuliaan dan kehormatan, yang tidak direguk oleh tempat lainnya, sekalipun Madinah. Berikut beberapa dalil yang menunjukkan kemulian kota tersebut.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "1",
      "title":
          "Allah Subhanahu wa Ta’ala telah menetapkan Mekkah sebagai kota suci, yakni sejak penciptaan langit dan bumi.",
      "penjelasan":
          "Nabi Shallallahu ‘alaihi wa sallam bersabda pada hari penaklukan kota Mekkah :",
      "ayat":
          "إِنَّ هَذَا الْبَلَدَ حَرَّمَهُ اللَّهُ يَوْمَ خَلَقَ السَّمَوَاتِ وَالْأَرْضَ فَهُوَ حَرَامٌ بِحُرْمَةِ اللَّهِ إِلَى يَوْمِ الْقِيَامَةِ",
      "arti":
          "Artinya: Sesungguhnya kota ini, Allah telah memuliakannya pada hari penciptaan langit dan bumi. Ia adalah kota suci dengan dasar kemuliaan yang Allah tetapkan sampai hari Kiamat"
    },
    {
      "no": "",
      "title": "",
      "penjelasan":
          "Sebagaimana termaktub dalam Al-Qur'an surat Ali 'Imran Ayat 96, Allah SWT berfirman:",
      "ayat":
          "إِنَّ أَوَّلَ بَيْتٍ وُضِعَ لِلنَّاسِ لَلَّذِى بِبَكَّةَ مُبَارَكًا وَهُدًى لِّلْعَٰلَمِينَ",
      "arti":
          "Artinya: Sesungguhnya rumah yang mula-mula dibangun untuk (tempat beribadat) manusia, ialah Baitullah yang di Bakkah (Makkah) yang diberkahi dan menjadi petunjuk bagi semua manusia."
    },
    {
      "no": "2",
      "title":
          "Makkah adalah negeri yang terbaik dan paling dicintai Allah SWT",
      "penjelasan":
          "Rasulullah SAW pernah bersabda sembari menghadapkan wajahnya ke Makkah ketika beliau hendak hijrah ke Madinah yang mengatakan tempat tersebut merupakan tempat yang paling dicintai Allah SWT. Hal itu diriwayatkan dalam hadis berikut ini.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Artinya: Demi Allah SWT, sesungguhnya engkau adalah negeri yang paling baik di sisi Allah dan negeri yang paling dicintai Allah SWT. Andaikan bukan karena pendudukmu yang mengusirku, aku tidak akan berpindah.(HR Ad-Daruquthni)",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "3",
      "title": " Penuh Rasa Aman",
      "penjelasan":
          "Dalam surah Ali Imran ayat 97 dijelaskan bahwa Makkah merupakan Baitullah atau rumah Allah SWT sehingga barang siapa yang memasukinya maka akan dipenuhi dengan rasa aman dan ketenangan.",
      "ayat":
          "فِيْهِ اٰيٰتٌۢ بَيِّنٰتٌ مَّقَامُ اِبْرٰهِيْمَ ەۚ وَمَنْ دَخَلَهٗ كَانَ اٰمِنًاۗ وَلِلّٰهِ عَلَى النَّاسِ حِجُّ الْبَيْتِ مَنِ اسْتَطَاعَ اِلَيْهِ سَبِيْلًاۗ وَمَنْ كَفَرَ فَاِنَّ اللّٰهَ غَنِيٌّ عَنِ الْعٰلَمِيْنَ",
      "arti":
          "Artinya: Di dalamnya terdapat tanda-tanda yang jelas, (di antaranya) Maqam Ibrahim. Siapa yang memasukinya (Baitullah), maka amanlah dia. (Di antara) kewajiban manusia terhadap Allah adalah melaksanakan ibadah haji ke Baitullah, (yaitu bagi) orang yang mampu mengadakan perjalanan ke sana. Siapa yang mengingkari (kewajiban haji), maka sesungguhnya Allah Mahakaya (tidak memerlukan sesuatu pun) dari seluruh alam."
    },
    {
      "no": "3",
      "title": "Tidak Akan Dimasuki Dajal",
      "penjelasan":
          "Dajal diyakini akan muncul dari Ashbahan dan akan menelusuri muka bumi. Namun ada satu tempat yang tidak akan dimasuki dajal, itu adalah Kota Makkah dan Madinah. Dalam sabda Rasulullah disebutkan dajal tidak akan masuk ke Makkah dan Madinah karena malaikat akan menjaga dua kota tersebut.",
      "ayat":
          "لاَ يَأْتِى أَرْبَعَةَ مَسَاجِدَ الْكَعْبَةَ وَمَسْجِدَ الرَّسُولِ والْمَسْجِدَ الأَقْصَى وَالطُّورَ",
      "arti":
          "Artinya: Dajjal tidak akan memasuki empat masjid: masjid Ka’bah (masjidil Haram), masjid Rasul (masjid Nabawi), masjid Al Aqsho’, dan masjid Ath Thur. (HR Ahmad)"
    },
  ];
}
