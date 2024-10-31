import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

class TataCaraSai extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  TataCaraSai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ButtonChangeSizeTextWidget(
        UppSize: () {
          upDownNotifier.value.upSize();
          upDownNotifier.notifyListeners();
        },
        DownSize: () {
          upDownNotifier.value.downSize();
          upDownNotifier.notifyListeners();
        },
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                        "Tata Cara Sa'i",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Untuk pengamalannya, sa'i perlu memenuhi syarat dan tata cara berikut agar bisa sah:",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        bulletColor: Colors.transparent,
                        bulletType: BulletType.numbered,
                        numberColor: blackColor,
                        listItems: [
                          Text(
                            "Melakukan sa'i setelah thawaf",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Berjalan sa'i di tempatnya (mas'a), yaitu jalan yang memanjang antara Safa dan Marwah",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Ketika sa'i membaca doa yang diajarkan Rasulullah SAW",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Mulai berjalan sa'i dari bukit Shafa ke bukit Marwah sehingga terhitung satu kali (putaran)",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Kemudian berjalan lagi dari bukit Marwah ke Shafa, yang terhitung putaran selanjutnya",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Lanjut berjalan antara Shafa ke Marwah hingga tujuh kali.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Bacaan Doa saat Sa'i",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ada doa dan dzikir yang dapat dibaca ketika melaksanakan sa'i. Berikut bacaan doa sa'i:",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          textAlign: TextAlign.right,
                          "رَبِّ اغْفِرْ وَارْحَمْ وَاهْدِنِي السَّبِيْلَ الأَقْوَمَ",
                          style: TextStyle(
                            fontSize: upDown.sizeArabic,
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\u0022Ya Allah, ampunilah hamba, sayangilah hamba, dan tunjukkanlah hamba kepada jalan yang lebih lurus.\u0022",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                          fontStyle: FontStyle.italic,
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
