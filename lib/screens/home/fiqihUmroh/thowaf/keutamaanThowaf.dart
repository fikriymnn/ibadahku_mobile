import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class KeutamaanThowaf extends StatelessWidget {
  const KeutamaanThowaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Keutamaan Thowaf",
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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Keutamaan Thowaf",
                  style: TextStyle(
                    fontSize: 20,
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Thowaf merupakan salah satu ibadah haji yang memiliki keagungan tinggi menurut tuntunan Kitabullah, sunnah Rasulullah saw., dan kesepakatan umat. Dari Ibnu Abbas r.a. bahwa Rasulullah saw. bersabda, \u0022Sesungguhnya Allah menurunkan kepada ahli masjid Makkah setiap hari dan malam seratus dua puluh rahmat. Enam puluh untuk orang yang thowaf, empat puluh untuk orang yang beriktikaf, dan dua puluh untuk orang yang melihat Ka'bah.\u0022 (HR Thabrani, Hakim dan Ibnu Asakir)."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Thowaf, ibadah yang dilakukan dengan mengelilingi Ka'bah, memiliki kedudukan yang sangat istimewa dalam Islam. Selain menjadi rukun ibadah haji dan umrah, thawaf juga dipenuhi dengan berbagai keutamaan yang dijelaskan dalam Al-Qur'an dan hadis Nabi Muhammad SAW."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Thowaf adalah ibadah yang sangat mulia. Allah berfirman:"),
                SizedBox(
                  height: 25,
                ),
                Text(
                  textAlign: TextAlign.right,
                  "وَعَهِدْنَآ اِلٰٓى اِبْرٰهٖمَ وَاِسْمٰعِيْلَ اَنْ طَهِّرَا بَيْتِيَ لِلطَّاۤىِٕفِيْنَ وَالْعٰكِفِيْنَ وَالرُّكَّعِ السُّجُوْدِ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Dan telah Kami perintahkan kepada Ibrahim dan Ismail, \u0022Bersihkanlah rumah-Ku untuk orang-orang yang tawaf, orang yang iktikaf, orang yang rukuk dan orang yang sujud!\u0022 (QS Al-Baqarah: 125)",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Text(
                    "وَطَهِّرْ بَيْتِيَ لِلطَّائِفِينَ وَالْقَائِمِينَ وَالرُّكَّعِ السُّجُودِ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\u0022Dan sucikanlah rumah-Ku ini bagi orang-orang yang thowaf, dan orang-orang yang beribadah dan orang-orang yang rukuk dan sujud.\u0022 (QS Al-Hajj: 26)",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Rasulullah saw. bersabda:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Text(
                    "مَنْ طَافَ بِهَذَا البَيْتِ أُسْبُوعًا فَأَحْصَاهُ كَانَ كَعِتْقِ رَقَبَةٍ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\u0022Barangsiapa thawaf di Ka’bah tujuh kali dan menyempurnakannya (memperhatikan syarat dan adabnya) ,maka pahalanya adalah seperti membebaskan budak.\u0022 (HR. Tirmidzi No.959. Dishahihkan oleh al-Albani)",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                    "Thowaf adalah ibadah yang hanya dilakukan di Ka'bah saja, tidak ada thowaf selain di Ka'bah. Adapun thowaf yang dilakukan oleh sebagian orang seperti thowaf terhadap kuburan orang sholeh, atau terhadap batu yang lain, maka itu adalah bid'ah yang sangat mungkar. Karena ini adalah bentuk menyaingi rumah Allah."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Bahkan jika seseorang melakukan thowaf dalam rangka mendekatkan diri kepada penghuni kubur maka ini adalah bentuk kesyirikan dan kekufuran kepada Allah."),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
