import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class JanganBerdebatScreen extends StatefulWidget {
  const JanganBerdebatScreen({super.key});

  @override
  State<JanganBerdebatScreen> createState() => _JanganBerdebatScreenState();
}

class _JanganBerdebatScreenState extends State<JanganBerdebatScreen> {
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
            text: "Jangan Berdebat",
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
                  //     "Haji merupakan Rukun Islam ke-5 sekaligus amalan wajib bagi muslim yang mampu. Banyak keutamaan yang terkandung dari ibadah haji. Keutamaan-keutamaan Haji diantaranya :"),
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
                              number: "${index + 1}",
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
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$Penjelasan',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: sizePenjelasan,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: ayat == "" ? 0 : 10.0),
                    ayat == ""
                        ? Container()
                        : Text(
                            '$ayat',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: sizeAyat),
                          ),
                    SizedBox(height: artinya == "" ? 0 : 10.0),
                    artinya == ""
                        ? Container()
                        : Text('$artinya',
                            style: TextStyle(
                                fontSize: sizeArti,
                                fontStyle: FontStyle.italic)),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),

        //Text('Risiko kesehatan: $risiko'),
        // const SizedBox(height: 16.0),
      ],
    );
  }

  List keutamaanHaji = [
    {
      "penjelasan":
          "Larangan berdebat saat ibadah haji adalah salah satu aturan penting yang harus dipatuhi oleh para jemaah selama menjalankan rukun Islam yang kelima ini. Larangan ini didasarkan pada perintah Allah dalam Al-Qur'an, surat Al-Baqarah ayat 197, yang menyatakan bahwa ketika seseorang berada dalam ihram dan melaksanakan haji, mereka tidak boleh melakukan perbuatan buruk, berbicara kotor, atau berdebat (jidal).",
      "ayat":
          "اَلْحَجُّ اَشْهُرٌ مَّعْلُوْمٰتٌۚ فَمَنْ فَرَضَ فِيْهِنَّ الْحَجَّ فَلَا رَفَثَ وَلَا فُسُوْقَ وَلَا جِدَالَ فِى الْحَجِّۗ وَمَا تَفْعَلُوْا مِنْ خَيْرٍ يَّعْلَمْهُ اللّٰهُۗ وَتَزَوَّدُوْا فَاِنَّ خَيْرَ الزَّادِ التَّقْوٰىۖ وَاتَّقُوْنِ يٰٓاُولِى الْاَلْبَابِ",
      "arti":
          "Artinya: (Musim) haji itu (berlangsung pada) bulan-bulan yang telah dimaklumi. Siapa yang mengerjakan (ibadah) haji dalam (bulan-bulan) itu, janganlah berbuat rafaṡ, berbuat maksiat, dan bertengkar dalam (melakukan ibadah) haji. Segala kebaikan yang kamu kerjakan (pasti) Allah mengetahuinya. Berbekallah karena sesungguhnya sebaik-baik bekal adalah takwa. Bertakwalah kepada-Ku wahai orang-orang yang mempunyai akal sehat."
    },
    {
      "penjelasan":
          "Ayat ini secara tegas melarang tiga hal selama pelaksanaan haji, yaitu rafats (berkata kotor atau tidak senonoh), fusuq (melakukan perbuatan dosa atau kefasikan), dan jidal (berdebat atau berbantah-bantahan). Larangan ini mencerminkan bahwa haji bukan hanya sekadar ritual fisik, tetapi juga melibatkan kontrol diri dan kedisiplinan spiritual. Ibadah ini dirancang untuk membawa ketenangan dan kesucian batin, sehingga perilaku yang dapat memicu konflik atau ketegangan harus dihindari.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Dalam hadis, Rasulullah SAW juga menekankan pentingnya menghindari perdebatan, khususnya saat berada dalam kondisi ihram, yang menandakan dimulainya rangkaian ibadah haji atau umrah. Salah satu hadis yang menjelaskan hal ini berbunyi:",
      "ayat":
          "مَنْ حَجَّ لِلَّهِ فَلَمْ يَرْفُثْ وَلَمْ يَفْسُقْ رَجَعَ كَيَوْمِ وَلَدَتْهُ أُمُّهُ",
      "arti":
          "Artinya: Barangsiapa yang berhaji karena Allah, kemudian ia tidak melakukan rafats (perkataan kotor) dan tidak berbuat kefasikan, maka ia akan kembali seperti pada hari ketika ia dilahirkan oleh ibunya (HR. Bukhari dan Muslim)."
    },
    {
      "penjelasan":
          "Hadis ini menggarisbawahi bahwa seseorang yang mampu menjaga dirinya dari perkataan yang tidak baik, perbuatan dosa, dan perdebatan selama haji, akan mendapatkan pahala yang besar, yakni diampuni dosa-dosanya sehingga kembali seperti bayi yang baru dilahirkan, yakni dalam keadaan suci. Ini menunjukkan bahwa pengendalian diri dalam segala aspek, termasuk menjaga lisan dan sikap, adalah bagian penting dari kesempurnaan haji.",
      "ayat": "",
      "arti": ""
    },
  ];
}
