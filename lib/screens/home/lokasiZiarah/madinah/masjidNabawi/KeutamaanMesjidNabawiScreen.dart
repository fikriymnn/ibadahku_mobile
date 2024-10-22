import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KeutamaanMesjidNabawiScreen extends StatefulWidget {
  const KeutamaanMesjidNabawiScreen({super.key});

  @override
  State<KeutamaanMesjidNabawiScreen> createState() =>
      _KeutamaanMesjidNabawiScreenState();
}

class _KeutamaanMesjidNabawiScreenState
    extends State<KeutamaanMesjidNabawiScreen> {
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
          "Masjid Nabawi memiliki banyak keutamaan yang diabadikan dalam beberapa hadis Nabi Muhammad SAW, serta diakui sebagai salah satu dari tiga masjid yang paling utama dalam Islam, bersama dengan Masjidil Haram di Mekkah dan Masjid Al-Aqsa di Yerusalem. Berikut adalah beberapa keutamaan Masjid Nabawi: ",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title":
          "Salat di Masjid Nabawi Lebih Baik daripada Seribu Salat di Masjid Lain",
      "penjelasan":
          "Salah satu keutamaan yang paling dikenal tentang Masjid Nabawi adalah keutamaan beribadah di dalamnya. Rasulullah SAW menyebutkan bahwa salat di Masjid Nabawi lebih utama dibandingkan salat di masjid lain, kecuali Masjidil Haram di Mekkah.",
      "ayat":
          "وَعَنِ اِبْنِ اَلزُّبَيْرِ رَضِيَ اَللَّهُ عَنْهُمَا قَالَ: قَالَ رَسُولُ اَللَّهِ ( { صَلَاةٌ فِي مَسْجِدِي هَذَا أَفْضَلُ مِنْ أَلْفِ صَلَاةٍ فِيمَا سِوَاهُ إِلَّا اَلْمَسْجِدَ اَلْحَرَامَ , وَصَلَاةٌ فِي اَلْمَسْجِدِ اَلْحَرَامِ أَفْضَلُ مِنْ صَلَاةٍ فِي مَسْجِدِي بِمِائَةِ صَلَاةٍ } رَوَاهُ أَحْمَدُ, وَصَحَّحَهُ اِبْنُ حِبَّانَ",
      "arti":
          "Dari Ibnu Az-Zubair bahwa Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Sekali shalat di masjidku ini lebih utama daripada 1000 kali shalat di masjid lainnya kecuali Masjidil Haram dan sekali shalat di Masjidil Haram lebih utama daripada 100 kali shalat di masjidku ini.” (Diriwayatkan oleh Imam Ahmad, hadits ini sahih menurut Ibnu Hibban) [HR. Ahmad, 26:41-42; Ibnu Hibban, 1620. Sanad hadits ini sahih].",
      "img": ""
    },
    {
      "no": "1",
      "title": "Masjid yang Dibangun atas Dasar Takwa",
      "penjelasan":
          "Masjid Nabawi adalah salah satu masjid yang didirikan atas dasar takwa, sebagaimana disebutkan dalam Al-Qur’an. Meskipun ayat ini lebih khusus merujuk pada Masjid Quba’, prinsip masjid yang dibangun atas dasar ketakwaan juga berlaku untuk Masjid Nabawi.",
      "ayat":
          "لَا تَقُمْ فِيْهِ اَبَدًاۗ لَمَسْجِدٌ اُسِّسَ عَلَى التَّقْوٰى مِنْ اَوَّلِ يَوْمٍ اَحَقُّ اَنْ تَقُوْمَ فِيْهِۗ فِيْهِ رِجَالٌ يُّحِبُّوْنَ اَنْ يَّتَطَهَّرُوْاۗ وَاللّٰهُ يُحِبُّ الْمُطَّهِّرِيْنَ",
      "arti":
          "Artinya: Janganlah engkau melaksanakan salat di dalamnya (masjid itu) selama-lamanya. Sungguh, masjid yang didirikan atas dasar takwa sejak hari pertama lebih berhak engkau melaksanakan salat di dalamnya. Di dalamnya ada orang-orang yang gemar membersihkan diri. Allah menyukai orang-orang yang membersihkan diri. (QS. At-Taubah: 108)",
      "img": ""
    },
    {
      "no": "1",
      "title": "Salah Satu dari Tiga Masjid yang Dianjurkan untuk Dikunjungi",
      "penjelasan":
          "Masjid Nabawi adalah salah satu dari tiga masjid yang dianjurkan oleh Rasulullah untuk dikunjungi oleh umat Islam. Rasulullah menyatakan bahwa perjalanan khusus untuk tujuan ibadah hanya dibenarkan ke tiga masjid: Masjidil Haram, Masjid Nabawi, dan Masjid Al-Aqsa.",
      "ayat":
          "لَا تُشَدُّ الرِّحَالُ إِلَّا إِلَى ثَلَاثَةِ مَسَاجِدَ مَسْجِدِي هَذَا وَمَسْجِدِ الْحَرَامِ وَمَسْجِدِ الْأَقْصَى",
      "arti":
          "“Janganlah kalian menempuh perjalanan jauh kecuali menuju ke tiga masjid: masjidku ini (Masjid Nabawi), masjid Al Haram, dan masjid Al Aqsha” (HR. Bukhari no. 1115 dan Muslim no. 1397).",
      "img": ""
    },
  ];
}
