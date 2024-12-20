import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/buttonChangeSizeTextWidget.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class SunnahIhram extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  SunnahIhram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Sunnah Ihram", height: 56),
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
            padding: EdgeInsets.all(16.0),
            child: ValueListenableBuilder(
                valueListenable: upDownNotifier,
                builder: (context, upDown, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sunnah-Sunnah Saat Ihram",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Text(
                          textAlign: TextAlign.right,
                          "وَعَنْ زَيْدِ بْنِ ثَابِتٍ ( { أَنَّ اَلنَّبِيَّ ( تَجَرَّدَ لِإِهْلَالِهِ وَاغْتَسَلَ } رَوَاهُ اَلتِّرْمِذِيُّ وَحَسَّنَهُ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: upDown.sizeArabic),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Dari Zaib bin Tsabit radhiyallahu ‘anhu, Nabi shallallahu ‘alaihi wa sallam melepas pakaian ketika ihram lalu bertalbiyah (ihlal), lalu mandi. (Hadits ini hasan diriwayatkan oleh Tirmidzi) [HR. Tirmidzi, no. 830. Syaikh ‘Abdullah Al-Fauzan mengatakan bahwa hadits ini didhaifkan oleh ‘Uqaili dan Ibnu Ma’in].",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      BulletedList(
                        bulletColor: blackColor,
                        listItems: [
                          Text(
                            "Ihlal berarti meninggikan suara dengan mengucapkan talbiyah ketika masuk dalam ihram untuk menunaikan nusuk (ibadah haji atau umrah)",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Hendaklah melepas pakaian ketika berihram. Yang dikenakan oleh orang yang berihram adalah izar (sarung), rida’ (kain atas), dan sepasang sandal. Ini berlaku untuk laki-laki. Kain ihram yang digunakan disunnahkan berwarna putih. Sedangkan untuk wanita, saat ihram, hendaklah membuka wajah dan telapak tangan.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Mandi ketika berihram untuk haji atau umrah atau haji dan umrah sekaligus itu disunnahkan. Mandinya diniatkan untuk mandi ihram. Hukumnya tidak wajib, tetapi sunnah muakkad, makruh bila ditinggalkan. Mandi ini bertujuan untuk bersih-bersih dan membuat badan semakin bersemangat.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Memotong rambut dan kuku disunnahkan saat ihram, bila dibutuhkan untuk dipotong. Hal ini bukan kekhususan ihram, tetapi diperlukan ketika ada hajat.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Jumhur ulama berpandangan bahwa mandi tersebut dihukumi sunnah bagi orang yang berkeinginan untuk ihram, baik untuk laki-laki, anak-anak, dan wanita walaupun dalam keadaan haidh atau nifas. Mandi ini dimaksudkan untuk nusuk (ibadah) untuk masuk pada haji atau umrah sehingga yang dalam keadaan suci maupun haidh dihukumi sama.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Jika tidak mandi, maka berwudhu. Jika tidak mendapati air atau cuaca begitu dingin pada musim dingin, tidak disunnahkan untuk tayamum. Karena tayamum bukan tujuannya untuk bersih-bersih dan menghilangkan bau. Sedangkan sebagian ulama menganjurkan kalau tidak ada air, tetap tayamum karena tayamum itu menggantikan mandi ketika ada hajat.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Yang disunnahkan sebelum mandi untuk ihram adalah bersih-bersih dengan mencukur rambut/ bulu-bulu pada ketiak dan kemaluan, memendekkan kumis, memotong kuku, menghilangkan berbagai kotoran, dan mencuci kepala dengan bidara, sabun, atau semacamnya.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Ada lima keadaan dianjurkan untuk mandi: (1) ihram, (2) masuk Makkah, (3) wukuf di Arafah, (4) wukuf di Muzdalifah di sisi masyaril haram, (5, 6, 7) melempar jumrah yang tiga pada hari tasyrik dan disunnahkan tiap hari untuk melempar jumrah agar mandi. Mandi ini dianjurkan karena ketujuh waktu ini adalah saat manusia berkumpul. Untuk anak yang belum tamyiz, hendaklah wali atau keluarganya memandikannya. Hikmah dari mandi ini adalah untuk bersih-bersih, sehingga wanita haidh dan nifas tetap dianjurkan untuk mandi.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Mandi untuk ihram ini tidaklah wajib karena mandinya adalah untuk sesuatu sebab yang akan datang. Mandi ini sunnah sebagaimana mandi Jumat dan mandi untuk hari raya. Mandi ini dimakruhkan bila ditinggalkan. Ihram dalam keadaan junub itu makruh. Yang lebih baik untuk wanita haidh dan nifas mengakhirkan ihram sampai ia suci dari haidh atau nifas. Jika memungkinkan untuk menunda ihram di miqat agar ihram lebih sempurna, itu lebih baik.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                        ],
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
