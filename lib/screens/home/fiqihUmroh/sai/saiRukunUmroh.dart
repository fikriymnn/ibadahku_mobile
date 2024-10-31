import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class SaiRukunUmroh extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  SaiRukunUmroh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Sa'i: Rukun Haji & Umroh",
          color: whiteColor,
          textSize: 20,
          isTitle: true,
        ),
        backgroundColor: primaryColor,
        /* actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: whiteColor,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: whiteColor,
                )),
          ], */
      ),
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
                        "Sa'i merupakan rukun haji dan umroh.",
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
                        "Allah SWT berfirman:",
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
                          "اِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَاۤىِٕرِ اللّٰهِۚ",
                          style: TextStyle(
                            fontSize: upDown.sizeArabic,
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "\u0022Sesungguhnya Safa dan Marwah merupakan sebagian syiar (agama) Allah.\u0022 (QS Al-Baqarah: 158)",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Jika Safa dan Marwah merupakan syiar Allah SWT, maka Allah SWT adalah perkara yang agung, maka tentu tidak boleh menggampangkannya dan jelas sa'i antara keduanya merupakan perkara yang harus dalam manasik (haji dan umroh).",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ketika Nabi shallallahu álaihi wasallam melakukan saí dan beliau naik di bukit Shofa maka beliau membaca ayat ini, lalu beliau berkata,",
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
                          "أَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ",
                          style: TextStyle(
                            fontSize: upDown.sizeArabic,
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "\u0022Aku mulai dengan apa yang Allah mulai terlebih dahulu.\u0022 (HR Muslim no 1218)",
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
