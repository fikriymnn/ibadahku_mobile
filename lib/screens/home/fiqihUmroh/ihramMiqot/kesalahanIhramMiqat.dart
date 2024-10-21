import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class KesalahanIhramMiqat extends StatelessWidget {
  const KesalahanIhramMiqat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Kesalahan Ihram Miqot",
          color: whiteColor,
          textSize: 20,
          isTitle: true,
        ),
        backgroundColor: primaryColor,
        actions: [
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
        ],
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
                  "Kesalahan Umum Terkait Ihram dan Cara Menghindarinya",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "1. Tidak Memahami Persyaratan Ihram Secara Mendalam",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                      "Salah satu kesalahan yang sering terjadi adalah kurang memahami secara detail mengenai persyaratan ihram, seperti cara mengenakan pakaian ihram dengan benar, doa-doa yang harus dibaca, dan larangan-larangan yang harus dihindari selama ihram."),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                      "Cara Menghindarinya: Sebelum berangkat, pelajari tata cara ihram secara mendalam dari sumber terpercaya, seperti kitab-kitab fiqih atau konsultasi dengan ulama yang berpengalaman. Diskusikan dengan agen perjalanan atau pemandu umrah untuk memastikan Anda memahami seluruh persyaratan."),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "2. Kurangnya Persiapan Mental dan Spiritual",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                      "Banyak jamaah yang tidak menyiapkan diri secara mental dan spiritual sebelum memasuki keadaan ihram, yang dapat menyebabkan kurangnya fokus dan ketaatan dalam menjalankan ibadah."),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                      "Cara Menghindarinya: Persiapkan mental dan spiritual dengan meningkatkan ibadah seperti membaca Al-Quran, berdzikir, dan memperdalam pengetahuan tentang ibadah haji dan umrah. Berdoalah kepada Allah SWT agar diberikan keteguhan hati dalam menjalankan ibadah."),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "3. Kesalahan dalam Memilih Miqot",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                      "Beberapa jamaah mungkin kurang memahami pentingnya memilih miqot yang benar dan melewati batas miqot sebelum memulai ihram, yang bisa berdampak pada sahnya ibadah haji atau umrah."),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                      "Cara Menghindarinya: Sebelum perjalanan, pelajari dengan baik lokasi miqot yang akan Anda lewati dan pastikan untuk melewatinya sebelum memulai ihram. Diskusikan rute perjalanan dengan pemandu atau agen perjalanan untuk menghindari kesalahan."),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "4. Melanggar Larangan Saat Ihram",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                      "Selama dalam keadaan ihram, terdapat larangan-larangan seperti tidak boleh memotong rambut, menggunakan wewangian, dan lain-lain. Pelanggaran terhadap larangan-larangan ini dapat mempengaruhi sahnya ibadah."),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                      "Cara Menghindarinya: Pahami dengan jelas semua larangan yang berlaku selama ihram dan berkomitmen untuk mematuhinya. Ingatkan diri sendiri serta teman-teman perjalanan untuk saling mengingatkan tentang larangan-larangan ini agar ibadah berjalan lancar."),
                ),
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
