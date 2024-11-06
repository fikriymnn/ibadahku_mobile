import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../widgets/customAppBar.dart';

class TamuAllahScreen extends StatefulWidget {
  const TamuAllahScreen({super.key});

  @override
  State<TamuAllahScreen> createState() => _TamuAllahScreenState();
}

class _TamuAllahScreenState extends State<TamuAllahScreen> {
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
        appBar: CustomAppbar(title: "Tamu Allah", height: 56),
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
                    const SizedBox(height: 10.0),
                    Text(
                      '$ayat',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: sizeAyat),
                    ),
                    const SizedBox(height: 10.0),
                    Text('$artinya', style: TextStyle(fontSize: sizeArti)),
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
          "Jemaah haji dan umrah disebut sebagai tamu Allah. Sebagaimana sabda Nabi shallallahu ‘alaihi wasallam,",
      "ayat":
          "الْغَازِى فِى سَبِيلِ اللَّهِ وَالْحَاجُّ وَالْمُعْتَمِرُ وَفْدُ اللَّهِ دَعَاهُمْ فَأَجَابُوهُ وَسَأَلُوهُ فَأَعْطَاهُمْ",
      "arti":
          "Artinya: Orang yang berperang di jalan Allah, orang yang berhaji, dan orang yang berumrah adalah tamu Allah. Allah memanggil mereka, maka mereka pun memenuhinya. Dan mereka meminta kepada-Nya, maka Ia berikan kepada mereka (Ia kabulkan).” (HR. Ibnu Majah dihasankan oleh Syekh Al-Albani)"
    },
    {
      "penjelasan":
          "Dalam riwayat lainnya, Nabi shallallahu ‘alaihi wasallam bersabda,",
      "ayat":
          "الحُجَّاجُ وَالْعُمَّارُ وَفْدُ اللهِ، دَعَاهُمْ فَأَجَابُوْهُ، سَأَلُوْهُ فَأَعْطَاهُمْ",
      "arti":
          "Artinya: Para jemaah haji dan umrah adalah tamu Allah. Allah memanggil mereka, maka mereka pun memenuhi panggilan tersebut. Mereka meminta kepada-Nya dan Ia berikan kepada mereka (Ia kabulkan).” (HR Ibnu Majah,  dihasankan oleh Al-Albani)"
    },
    {
      "penjelasan":
          "Arti lafaz “al-wafdu” adalah tamu. Dan tentunya tamu itu dimuliakan dan dijamu. Dalam kitab “An-Nihayah” disebutkan makna “al-wafdu”,",
      "ayat":
          "الْوَفْدُ الْقَوْمُ يَجْتَمِعُونَ وَيَرِدُونَ الْبِلَادَ، أَوْ يَقْصِدُونَ الرُّؤَسَاءَ لِلزِّيَارَةِ، أَوِ اسْتِرْفَادًا وَغَيْرَ ذَلِكَ.",
      "arti":
          "Artinya: Al-wafdu adalah sekelompok orang yang berkumpul dan mendatangi suatu negeri atau mereka bermaksud menemui para pembesar negeri untuk berkunjung atau meminta bantuan dan lain-lainnya."
    },
    {
      "penjelasan":
          "Jadi, alasan disebut tamu Allah adalah karena para jemaah haji dan umrah itu akan dimuliakan Allah sebagaimana tamu itu dimuliakan. Oleh karena itu, kaum muslimin juga diperintahkan memuliakan para jemaah haji dan umrah dengan membantu mereka, memberikan pertolongan dan kemudahan kepada mereka, semisal memberikan bantuan makan dan tempat, membantu orang yang sepuh (tua), wanita, serta anak-anak.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Alasan lainnya adalah agar para jemaah haji dan umrah menjaga sikap, akhlak, dan takwa mereka selama menjadi tamu Allah. Karena yang namanya tamu ketika bertamu itu bersikap baik, duduk yang manis, tidak berbuat, ulah atau melakukan hal-hal yang memalukan selama bertamu. Syekh Ali Al-Qari rahimahullah menjelaskan,",
      "ayat":
          "وفد الله ثلاثة أشخاص أو أجناس، المجاهد مع الكفار لإعلاء الدين، والحاج والمعتمر، المتميزون عن سائر المسلمين بتحمل المشاق البدنية والمالية ومفارقة الأهلين، والحاصل أنهم قومٌ معظمون عند الكرماء، ومكرمون عند العظماء، تُعطى مطالبهم وتُقضى مآربهم",
      "arti":
          "Artinya: Tamu Allah ada tiga orang atau tiga jenis: (1) mujahid yang berperang melawan orang kafir untuk meninggikan agama, (2) orang yang berhaji, dan (3) orang yang berumrah. Mereka ini istimewa dibandingkan yang lain karena menanggung kesusahan badan, mengeluarkan harta, serta berpisah dari keluarga. Kesimpulannya, mereka adalah kelompok orang yang diagungkan di sisi para orang-orang mulia dan kelompok orang yang dimuliakan di sisi para orang-orang agung. Permintaan mereka diberikan dan hajat mereka ditunaikan.” (Lihat Mirqatul Mafatih, 8: 469)"
    },
  ];
}
