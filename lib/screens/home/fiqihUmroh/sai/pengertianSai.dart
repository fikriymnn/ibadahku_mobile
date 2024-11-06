import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class PengertianSai extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  PengertianSai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Pengertian Sa'i", height: 56),
      floatingActionButton: ButtonChangeSizeTextWidget(UppSize: () {
        upDownNotifier.value.upSize();
        upDownNotifier.notifyListeners();
      }, DownSize: () {
        upDownNotifier.value.downSize();
        upDownNotifier.notifyListeners();
      }),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ValueListenableBuilder(
                valueListenable: upDownNotifier,
                builder: (context, upDown, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pengertian Sa'i",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Sa'i secara harfiah berarti \u0022berjalan\u0022 atau \u0022berusaha\u0022. Dalam istilah, sa'i mengacu pada aktivitas berjalan bolak-balik tujuh kali antara bukit Shafa dan Marwah. Proses ini dimulai di Shafa dan berakhir di Marwah, sesuai dengan syarat dan tata cara yang telah ditentukan.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Perintah melaksanakan sa'i dalam ibadah haji dan umrah tercantum dalam Surah Al-Baqarah ayat 158.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          textAlign: TextAlign.right,
                          "اِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَاۤىِٕرِ اللّٰهِ ۚ فَمَنْ حَجَّ الْبَيْتَ اَوِ اعْتَمَرَ فَلَا جُنَاحَ عَلَيْهِ اَنْ يَّطَّوَّفَ بِهِمَا ۗ وَمَنْ تَطَوَّعَ خَيْرًاۙ فَاِنَّ اللّٰهَ شَاكِرٌ عَلِيْمٌ",
                          style: TextStyle(
                            fontSize: upDown.sizeArabic,
                            fontWeight: FontWeight.bold,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\u0022Innaṣ-ṣafā wal-marwata min sya'ā`irillāh, fa man ḥajjal-baita awi'tamara fa lā junāḥa 'alaihi ay yaṭṭawwafa bihimā, wa man taṭawwa'a khairan fa innallāha syākirun 'alīm.\u0022",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Artinya: Sesungguhnya Shafa dan Marwah merupakan sebagian syiar (agama) Allah. Maka, siapa beribadah haji ke Baitullah atau berumrah, tidak ada dosa baginya mengerjakan sa'i antara keduanya. Siapa yang dengan kerelaan hati mengerjakan kebajikan, maka sesungguhnya Allah Maha Mensyukuri, lagi Maha Mengetahui.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
