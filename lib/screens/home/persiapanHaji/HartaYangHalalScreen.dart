import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class HartaYangHalalScreen extends StatefulWidget {
  const HartaYangHalalScreen({super.key});

  @override
  State<HartaYangHalalScreen> createState() => _HartaYangHalalScreenState();
}

class _HartaYangHalalScreenState extends State<HartaYangHalalScreen> {
  double sizeHeading = 18;
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
            text: "Harta Yang Halal",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: sizeHeading, fontWeight: FontWeight.bold),
                      "Berhaji Dengan Harta Yang Halal"),
                  SizedBox(
                    height: 10,
                  ),
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
                            style: TextStyle(fontSize: sizeArti)),
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
          "Melaksanakan ibadah haji dengan menggunakan harta yang halal adalah salah satu syarat yang sangat penting dalam agama Islam. Harta yang digunakan untuk menjalankan ibadah haji harus didapatkan dengan cara yang sah dan halal sesuai dengan syariat Islam. Ibadah haji adalah rukun Islam yang kelima, dan salah satu syarat penting untuk melaksanakannya adalah kemampuan finansial. Oleh karena itu, Islam menekankan bahwa harta yang digunakan untuk ibadah haji tidak hanya mencukupi, tetapi juga harus bersih dari segala bentuk praktik yang haram seperti riba, penipuan, pencurian, atau hasil dari perbuatan maksiat lainnya.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Dalam Islam, kehalalan harta sangat dijaga, karena segala bentuk ibadah, termasuk ibadah haji, hanya akan diterima oleh Allah jika dilaksanakan dengan niat yang benar dan menggunakan harta yang halal. Rasulullah SAW bersabda:",
      "ayat":
          "عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللهُ تَعَالَى عَنْهُ قَالَ: قَالَ رَسُوْلُ اللهِ: (إِنَّ اللهَ تَعَالَى طَيِّبٌ لاَ يَقْبَلُ إِلاَّ طَيِّبَاً وَإِنَّ اللهَ أَمَرَ المُؤْمِنِيْنَ بِمَا أَمَرَ بِهِ المُرْسَلِيْنَ فَقَالَ: (يَا أَيُّهَا الرُّسُلُ كُلُوا مِنَ الطَّيِّبَاتِ وَاعْمَلُوا صَالِحاً) (المؤمنون: الآية51) ، وَقَالَ: (يَا أَيُّهَا الَّذِينَ آمَنُوا كُلُوا مِنْ طَيِّبَاتِ مَا رَزَقْنَاكُمْ) (البقرة: الآية172) ثُمَّ ذَكَرَ الرَّجُلَ يُطِيْلُ السَّفَرَ أَشْعَثَ أَغْبَرَ، يَمُدُّ يَدَيْهِ إِلَى السَّمَاء، ِ يَا رَبِّ يَا رَبِّ، وَمَطْعَمُهُ حَرَامٌ، وَمَشْرَبُهُ حَرَامٌ، وَغُذِيَ بِالحَرَامِ فَأَنَّى يُسْتَجَابُ لذلك)",
      "arti":
          "Artinya: Sesungguhnya Allah itu Maha Baik dan tidak menerima kecuali yang baik. Dan sesungguhnya Allah memerintahkan kepada orang-orang beriman apa yang Dia perintahkan kepada para rasul-Nya. Maka Allah berfirman: {Wahai para rasul, makanlah dari makanan yang baik-baik dan kerjakanlah amal saleh} (QS. Al-Mu’minun: 51). Dan Allah juga berfirman: {Wahai orang-orang yang beriman, makanlah dari makanan yang baik-baik yang telah Kami rezekikan kepada kalian} (QS. Al-Baqarah: 172)."
    },
    {
      "penjelasan":
          "Hadis ini menegaskan bahwa Allah SWT hanya akan menerima ibadah yang dilakukan dengan cara yang baik dan menggunakan harta yang bersih dari segala bentuk keharaman. Ibadah haji yang dibiayai dengan harta yang haram akan kehilangan nilainya di hadapan Allah, meskipun seseorang secara fisik telah melaksanakan semua rukun dan syarat haji dengan sempurna.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Al-Qur’an menekankan pentingnya menggunakan harta yang halal dalam berbagai ayat. Salah satu ayat yang sangat berkaitan dengan penggunaan harta dalam ibadah adalah firman Allah SWT dalam Surah Al-Baqarah ayat 172:",
      "ayat":
          "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْا كُلُوْا مِنْ طَيِّبٰتِ مَا رَزَقْنٰكُمْ وَاشْكُرُوْا لِلّٰهِ اِنْ كُنْتُمْ اِيَّاهُ تَعْبُدُوْنَ",
      "arti":
          "Artinya:Wahai orang-orang yang beriman, makanlah apa-apa yang baik yang Kami anugerahkan kepadamu dan bersyukurlah kepada Allah jika kamu benar-benar hanya menyembah kepada-Nya."
    },
    {
      "penjelasan":
          "Ayat ini memperingatkan umat Islam agar menjauhi cara-cara yang batil dalam memperoleh harta. Setiap harta yang diperoleh dengan cara yang tidak benar, seperti penipuan, riba, korupsi, atau pencurian, adalah harta yang haram, dan penggunaannya dalam ibadah akan menodai keikhlasan dan menghalangi diterimanya amal ibadah tersebut.",
      "ayat": "",
      "arti": ""
    },
  ];
}
