import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/buttonChangeSizeTextWidget.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class LaranganIhram extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  LaranganIhram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Larangan Ihram", height: 56),
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
                        "Larangan Saat Ihram",
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
                        "Berdasarkan buku Panduan Ibadah Haji dan Umrah dari Kemenag dan NU Online, berikut adalah beberapa hal yang dilarang saat berada dalam kondisi ihram:",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "1. Melakukan Maksiat atau Kejahatan",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: upDown.sizeNum),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Selama ihram, jamaah dilarang melakukan perbuatan maksiat atau tindakan kriminal, seperti mencuri, membunuh, atau melakukan kontak fisik dengan lawan jenis. Hal ini sesuai dengan QS Al-Baqarah ayat 197 yang menegaskan bahwa selama haji, seseorang tidak boleh melakukan perbuatan dosa atau perdebatan yang tak perlu.",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          textAlign: TextAlign.right,
                          "فَمَن فَرَضَ فِيهِنَّ الْحَجَّ فَلَا رَفَثَ وَلَا فُسُوقَ وَلَا جِدَالَ فِي الْحَجِّ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: upDown.sizeArabic),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Artinya: \u0022Siapa saja yang menetapkan niatnya untuk melaksanakan haji pada bulan-bulan itu tidak boleh rafats [jimak], berbuat fasiq [dosa], dan berbantah-bantahan dalam masa pelaksanaan haji.\u0022",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "2. Berdebat atau Bertengkar",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: upDown.sizeNum),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Jamaah haji dilarang terlibat dalam perdebatan atau pertengkaran. Jika menghadapi situasi yang membuat kesal, lebih baik menahan diri dan beristighfar, menghindari konflik yang tidak penting.",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "3. Memotong Kuku atau Rambut",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: upDown.sizeNum),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Saat ihram, memotong kuku, rambut, atau bulu tubuh tidak diperbolehkan. Namun, jika kuku pecah dan menyebabkan rasa sakit, kuku tersebut boleh dipotong tanpa dikenakan denda.",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "4. Bersenggama",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: upDown.sizeNum),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Meskipun suami istri, bersenggama selama ihram dilarang karena dapat merusak ibadah haji atau umrah dan menyebabkan dosa.",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "5. Berburu dan Memakan Binatang",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: upDown.sizeNum),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Jamaah dilarang berburu atau memakan binatang buruan selama ihram, serta dilarang merusak pohon atau mencabut rumput. Hal ini dijelaskan dalam QS Al-Maidah ayat 96, yang melarang berburu selama ihram.",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          textAlign: TextAlign.right,
                          "وَحُرِّمَ عَلَيْكُمْ صَيْدُ الْبَرِّ مَا دُمْتُمْ حُرُمًا",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: upDown.sizeArabic),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Artinya: \u0022Diharamkan bagimu(menangkap) binatang buruan darat selama kamu dalam ihram.\u0022 (QS Al-Maidah: 96)",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "6. Menikah atau Menikahkan",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: upDown.sizeNum),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Melangsungkan akad nikah atau menikahkan orang lain saat ihram tidak diperbolehkan, dan akad yang dilaksanakan dalam kondisi ihram dianggap tidak sah, sesuai dengan hadis Rasulullah SAW.",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          textAlign: TextAlign.right,
                          "لا يَنْكِحُ المُحْرِمُ ولا يُنْكِحُ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: upDown.sizeArabic),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Artinya: \u0022Orang berihram tidak boleh menikah dan tidak boleh menikahkan.\u0022 (HR Muslim).",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "7. Menggunakan Parfum atau Wangi-wangian",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: upDown.sizeNum),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Jamaah ihram juga tidak boleh menggunakan parfum atau wewangian. Parfum sebaiknya dipakai sebelum memasuki ihram.",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Rasulullah SAW bersabda:",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          textAlign: TextAlign.right,
                          "وَلَا تَلْبَسُوا شَيْئًا مَسَّهُ زَعْفَرَانٌ وَلَا الْوَرْسُ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: upDown.sizeArabic),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Artinya: \u0022Jangan pula kalian memakai pakaian yang diberi minyak wangi atau wewangian dari daun tumbuhan\u0022 (HR Al-Bukhari).",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "8. Mengenakan Pakaian Berjahit",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: upDown.sizeNum),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Jamaah pria dilarang memakai pakaian berjahit selama ihram, sedangkan wanita tidak boleh mengenakan cadar atau sarung tangan. Namun, jamaah diperbolehkan memakai sandal asalkan jarinya tetap terlihat.",
                          style: TextStyle(
                            fontSize: upDown.sizeText,
                            color: blackColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Jika salah satu larangan tersebut dilanggar, jamaah harus membayar dam atau denda, seperti menyembelih seekor kambing, berpuasa tiga hari, atau menyantuni orang miskin.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Pada dasarnya, ihram menekankan niat yang sungguh-sungguh untuk beribadah kepada Allah dan meninggalkan sejenak urusan duniawi.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
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
