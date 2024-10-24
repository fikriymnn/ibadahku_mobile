import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class PenjelasanIhram extends StatelessWidget {
  const PenjelasanIhram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Penjelasan Ihram",
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
                  "Ihram",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Ihram merupakan salah satu rukun haji yang menjadi syarat penting bagi jamaah untuk melaksanakan ibadah haji atau umrah. Banyak orang mengira bahwa ihram hanya berkaitan dengan penggunaan kain ihram, padahal istilah ini sebenarnya mengacu pada niat untuk melaksanakan haji atau umrah."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Saat jamaah memulai ihram, mereka harus mematuhi aturan-aturan yang berlaku selama ibadah haji atau umrah. Untuk memahami lebih dalam tentang ihram, tata cara pelaksanaannya, serta larangan-larangan yang menyertainya, berikut penjelasan lengkapnya."),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Pengertian Ihram",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Secara bahasa, ihram berarti “menahan” atau “melarang”, sedangkan secara syariat, ihram diartikan sebagai niat untuk menjalankan ibadah haji atau umrah, yang kemudian diikuti dengan pelaksanaan amalan-amalan terkait."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Niat ihram harus dilakukan dengan sungguh-sungguh dan sempurna agar pelaksanaan ibadah haji menjadi sempurna pula. Jamaah yang sedang dalam keadaan ihram diwajibkan untuk menahan diri dari berbagai aktivitas yang dilarang, seperti berburu hewan dan perbuatan maksiat lainnya."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Jika melanggar aturan yang telah ditetapkan, jamaah diharuskan membayar kafarat atau denda. Besaran kafarat ini bervariasi tergantung pada pelanggaran yang dilakukan."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Pelaksanaan ihram dimulai sebelum jamaah sampai di miqat, dan diakhiri dengan tahallul, yaitu memotong minimal tiga helai rambut."),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Tata Cara Ihram",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Berikut adalah tata cara melaksanakan ihram saat menunaikan ibadah haji, yang dimulai dari miqat."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Ihram haji dimulai di lokasi miqat yang telah ditentukan berdasarkan wilayah asal jamaah. Sebagai contoh, bagi jamaah Indonesia, miqat biasanya dimulai dari Jeddah."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Sebelum ihram, jamaah harus melakukan persiapan dengan membersihkan diri, seperti mandi besar (mandi junub), mencukur kumis, bulu ketiak, dan bulu kemaluan, serta memotong kuku."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Kemudian mengenakan pakaian ihram putih sesuai ketentuan:"),
                BulletedList(
                  bulletColor: blackColor,
                  listItems: [
                    Text(
                        "Pakaian ihram wanita: menggunakan pakaian muslim berwarna putih yang menutup aurat."),
                    Text(
                        "Pakaian ihram pria: terdiri dari dua lembar kain tak berjahit. Satu kain dipakai seperti sarung yang diikat di pinggang, sementara yang lainnya dipakai sebagai selendang yang disampirkan di bahu."),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Setelah berpakaian ihram, jamaah dianjurkan mengerjakan shalat sunnah ihram dua rakaat. Pada rakaat pertama membaca surah Al-Fatihah dan Al-Kafirun, sedangkan pada rakaat kedua membaca surah Al-Fatihah dan Al-Ikhlas."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Kemudian, jamaah bersiap menuju Mekkah dan mengucapkan niat haji. Setelah itu, dilanjutkan dengan membaca talbiyah:"),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ، لَبَّيْكَ لَا شَرِيْكَ لَكَ لَبَّيْكَ، إِنَّ الْحَمْدَ وَالنِّعْمَةَ لَكَ وَالْمُلْكَ، لاَ شَرِيْكَ لَكَ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "\u0022Labbaika Allahumma labbaik, labbaika laa syariika laka labbaik. Innal hamda wanni'mata laka wal mulk, laa syariikaa laka.\u0022"),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Artinya: \u0022Ya Allah, aku datang memenuhi panggilan-Mu. Ya Allah, tidak ada sekutu bagi-Mu, sesungguhnya segala puji, nikmat, dan kekuasaan adalah milik-Mu. Tidak ada sekutu bagi-Mu.\u0022 (HR. Bukhari)"),
                SizedBox(
                  height: 25,
                ),
                Text(
                    "Setelah itu, jamaah haji dapat melanjutkan rangkaian ibadah haji lainnya, dengan tetap menjaga diri dari hal-hal yang dilarang selama ihram."),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
