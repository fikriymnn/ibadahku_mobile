import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../constants/colors.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/textWidgets.dart';

class List7 extends StatefulWidget {
  const List7({super.key});

  @override
  State<List7> createState() => _List7State();
}

class _List7State extends State<List7> {
  double sizeTitle = 18;
  double sizeText = 14;

  void upSize() {
    setState(() {
      sizeTitle++;
      sizeText++;
    });
  }

  void downSize() {
    setState(() {
      sizeTitle--;
      sizeText--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Kesehatan", height: 56),
      floatingActionButton:
          ButtonChangeSizeTextWidget(UppSize: upSize, DownSize: downSize),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Tips Kesehatan di Tanah Suci',
            style: TextStyle(fontSize: sizeTitle, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25.0),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: sizeText,
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
