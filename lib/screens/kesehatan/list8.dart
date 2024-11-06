import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../constants/colors.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/textWidgets.dart';

class List8 extends StatefulWidget {
  const List8({super.key});

  @override
  State<List8> createState() => _List8State();
}

class _List8State extends State<List8> {
  double sizeTitle = 18;
  double sizeSub = 16;
  double sizeText = 14;

  void upSize() {
    setState(() {
      sizeTitle++;
      sizeSub++;
      sizeText++;
    });
  }

  void downSize() {
    setState(() {
      sizeTitle--;
      sizeSub--;
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
            "Konsumsi Buah-buahan",
            style: TextStyle(
              fontSize: sizeTitle,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Pilihan Konsumsi Buah",
            style: TextStyle(
              fontSize: sizeSub,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Pada prinsipnya semua buah-buahan adalah baik, karena banyak mengandung air, serat dan vitamin yang dibutuhkan oleh tubuh manusia. Banyak jenis buah-buahan yang tersedia dan dapat dibeli di tanah suci, namun kita harus cermat mengkonsumsinya agar terhindar dari penyakit atau kondisi kesehatan yang menurun karena salah mengkonsumsi buah, seperti terjadi diare atau menimbulkan asam lambung berlebih (gastritis/maag).",
            style: TextStyle(
              fontSize: sizeText,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Tips mengkonsumsi buah-buahan selama menjalankan ibadah haji:",
            style: TextStyle(
              fontSize: sizeText,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: sizeText,
            ),
            listItems: [
              "Pilihlah buah yang dapat menambah energi dan memulihkan stamina dengan cepat seperti kurma, pisang, anggur (termasuk kismis)",
              "Untuk menghindari berlebihnya asam lambung, konsumsi buah yang bersifat basa seperti kurma, pepaya, pir, kiwi, pisang, apel, tomat, anggur (termasuk kismis)",
              "Untuk menghindari batuk, pilih buah dengan asam sitrat rendah, serat yang tidak terlalu kasar. Nuah yang perlu diwaspadai dikonsumsi saat batuk seperti jeruk, mangga, nanas, pisang, stroberi",
              "Bila kita mempunyai penyakit diabetes, konsumsi buah-buahan baik jenis maupun jumlah tetap diperhatikan agar gula darah tetap stabil terkontrol",
            ],
          ),
        ],
      ),
    );
  }
}
