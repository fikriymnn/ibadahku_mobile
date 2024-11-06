import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../../../constants/colors.dart';
import '../../../../functions/upDownSize.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class PenjelasanIhram extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  PenjelasanIhram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Penjelasan Ihram", height: 56),
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
            child: ValueListenableBuilder<upDownSize>(
                valueListenable: upDownNotifier,
                builder: (context, upDown, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ihram",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ihram merupakan salah satu rukun haji yang menjadi syarat penting bagi jamaah untuk melaksanakan ibadah haji atau umrah. Banyak orang mengira bahwa ihram hanya berkaitan dengan penggunaan kain ihram, padahal istilah ini sebenarnya mengacu pada niat untuk melaksanakan haji atau umrah.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Saat jamaah memulai ihram, mereka harus mematuhi aturan-aturan yang berlaku selama ibadah haji atau umrah. Untuk memahami lebih dalam tentang ihram, tata cara pelaksanaannya, serta larangan-larangan yang menyertainya, berikut penjelasan lengkapnya.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Pengertian Ihram",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Secara bahasa, ihram berarti “menahan” atau “melarang”, sedangkan secara syariat, ihram diartikan sebagai niat untuk menjalankan ibadah haji atau umrah, yang kemudian diikuti dengan pelaksanaan amalan-amalan terkait.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Niat ihram harus dilakukan dengan sungguh-sungguh dan sempurna agar pelaksanaan ibadah haji menjadi sempurna pula. Jamaah yang sedang dalam keadaan ihram diwajibkan untuk menahan diri dari berbagai aktivitas yang dilarang, seperti berburu hewan dan perbuatan maksiat lainnya.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Jika melanggar aturan yang telah ditetapkan, jamaah diharuskan membayar kafarat atau denda. Besaran kafarat ini bervariasi tergantung pada pelanggaran yang dilakukan.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Pelaksanaan ihram dimulai sebelum jamaah sampai di miqat, dan diakhiri dengan tahallul, yaitu memotong minimal tiga helai rambut.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Tata Cara Ihram",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Berikut adalah tata cara melaksanakan ihram saat menunaikan ibadah haji, yang dimulai dari miqat.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Ihram haji dimulai di lokasi miqat yang telah ditentukan berdasarkan wilayah asal jamaah. Sebagai contoh, bagi jamaah Indonesia, miqat biasanya dimulai dari Jeddah.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sebelum ihram, jamaah harus melakukan persiapan dengan membersihkan diri, seperti mandi besar (mandi junub), mencukur kumis, bulu ketiak, dan bulu kemaluan, serta memotong kuku.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Kemudian mengenakan pakaian ihram putih sesuai ketentuan:",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      BulletedList(
                        bulletColor: blackColor,
                        listItems: [
                          Text(
                            "Pakaian ihram wanita: menggunakan pakaian muslim berwarna putih yang menutup aurat.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Pakaian ihram pria: terdiri dari dua lembar kain tak berjahit. Satu kain dipakai seperti sarung yang diikat di pinggang, sementara yang lainnya dipakai sebagai selendang yang disampirkan di bahu.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Setelah berpakaian ihram, jamaah dianjurkan mengerjakan shalat sunnah ihram dua rakaat. Pada rakaat pertama membaca surah Al-Fatihah dan Al-Kafirun, sedangkan pada rakaat kedua membaca surah Al-Fatihah dan Al-Ikhlas.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Kemudian, jamaah bersiap menuju Mekkah dan mengucapkan niat haji. Setelah itu, dilanjutkan dengan membaca talbiyah:",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Text(
                          textAlign: TextAlign.right,
                          "لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ، لَبَّيْكَ لَا شَرِيْكَ لَكَ لَبَّيْكَ، إِنَّ الْحَمْدَ وَالنِّعْمَةَ لَكَ وَالْمُلْكَ، لاَ شَرِيْكَ لَكَ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: upDown.sizeArabic),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\u0022Labbaika Allahumma labbaik, labbaika laa syariika laka labbaik. Innal hamda wanni'mata laka wal mulk, laa syariikaa laka.\u0022",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Artinya: \u0022Ya Allah, aku datang memenuhi panggilan-Mu. Ya Allah, tidak ada sekutu bagi-Mu, sesungguhnya segala puji, nikmat, dan kekuasaan adalah milik-Mu. Tidak ada sekutu bagi-Mu.\u0022 (HR. Bukhari)",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Setelah itu, jamaah haji dapat melanjutkan rangkaian ibadah haji lainnya, dengan tetap menjaga diri dari hal-hal yang dilarang selama ihram.",
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
