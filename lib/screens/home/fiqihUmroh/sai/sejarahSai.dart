import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/buttonChangeSizeTextWidget.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class SejarahSai extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  SejarahSai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Sejarah Sa'i", height: 56),
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
                        "Kisah Sejarah Sa’i: Siti Hajar, Nabi Ibrahim AS, dan Nabi Ismail AS",
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
                        "Kisah sa'i berawal dari pengalaman Siti Hajar, istri Nabi Ibrahim dan ibu Nabi Ismail. Peristiwa ini terjadi ketika Siti Hajar mencari air untuk putranya yang kehausan, berjalan bolak-balik di antara Bukit Shafa dan Marwah.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Saat itu, Nabi Ibrahim diperintahkan oleh Allah SWT untuk meninggalkan Siti Hajar dan Ismail di padang tandus. Merasa bingung dan sedih, Siti Hajar bertanya, \u0022Mau pergi ke mana, Ibrahim?\u0022 Namun, Nabi Ibrahim tetap diam. Siti Hajar pun bertanya lagi, \u0022Sampai hatikah engkau meninggalkan kami di tempat sunyi dan tandus ini?\u0022 Akhirnya, Siti Hajar bertanya, \u0022Apakah ini perintah Allah SWT?\u0022 Nabi Ibrahim menjawab, \u0022Ya.\u0022 Mendengar jawaban tersebut, hati Siti Hajar menjadi tenang. Ia pun berkata, \u0022Jika ini perintah Allah, Dia tidak akan menyia-nyiakan kita.\u0022",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Setelah kepergian Nabi Ibrahim, makanan dan minuman mereka habis. Siti Hajar pun berusaha mencari air untuk putranya. Dari tempatnya, ia melihat Bukit Shafa dan segera berlari menuju puncaknya, tetapi tidak menemukan apa-apa. Kemudian ia menuju Bukit Marwah, namun tetap tanpa hasil. Siti Hajar bolak-balik dari Shafa ke Marwah sebanyak tujuh kali.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Pada akhirnya, saat berada di Bukit Marwah, Siti Hajar mendengar suara air. Ia mendekat dan melihat air mengalir deras dari tanah di dekat telapak kaki Nabi Ismail. Air itu dikenal sebagai air zamzam, yang sampai sekarang tidak pernah kering. Kawasan ini kemudian berkembang menjadi Kota Mekah setelah orang-orang Arab mulai menetap di sana.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Kini, peristiwa tersebut menjadi dasar bagi ibadah sa'i yang dilakukan umat Muslim saat haji dan umrah, mengenang perjuangan dan keyakinan Siti Hajar dalam menghadapi cobaan.",
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
