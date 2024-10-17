import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/textWidgets.dart';

class List7 extends StatelessWidget {
  const List7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Kesehatan",
          color: whiteColor,
          textSize: 20,
          isTitle: true,
        ),
        backgroundColor: primaryColor,
        actions: [
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
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Tips Kesehatan di Tanah Suci',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25.0),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: 15,
            ),
            listItems: [
              "Selalu membawa kartu keselamatan haji.",
              "Tetap melakukan aktivitas olahraga rutin yang ringan.",
              "Rutin memeriksa kesehatan di pelayanan kesehatan bagi yang memiliki penyakit kronis.",
              "Selalu ingat minum obat sesuai ketentuan bila menderita penyakit yang perlu pengobatan terus menerus.",
              "Beribadah sesuai kemampuan, fokus ibadah haji. Bila tidak mampu jangan memaksakan ibadah Sunnah atau mengurangi ibadah Sunnah.",
              "Cukup istirahat, tidak banyak beraktivitas di luar ibadah pokok seperti berbelanja.",
              "Hindari tempat yang berdesak-desakan",
              "Cukup minum dan cairan tubuh, bila perlu membawa botol untuk dapat minum kapan saja.",
              "Siap dengan obat pribadi, misalnya obat sakit lambung, obat flu, anti nyeri, dll.",
              "Berusaha mengetahui pos pelayanan kesehatan haji Indonesia juga mencatat nomor telepon penting bila keadaan darurat.",
              "Segera lapor kepada petugas kesehatan kloter bila terserang penyakit seperti batuk pilek yang tidak kunjung sembuh.",
              "Pentingnya istinsyaq dan instinsar saat berwudhu di Makkah dan Madinah untuk membersihkan hidung dan melembabkan mukosa (selaput lendir) hidung sehingga tidak mudah terkena infeksi saluran pernafasan atas.",
              "Pentingnya membawa pelembab wajah terutama wanita, mencegah iritasi kulit wajah oleh udara kering dan suhu panas.",
            ],
          ),
        ],
      ),
    );
  }
}
