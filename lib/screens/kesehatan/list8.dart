import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/textWidgets.dart';

class List8 extends StatelessWidget {
  const List8({super.key});

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
        /* actions: [
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
        ], */
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Konsumsi Buah-buahan",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Pilihan Konsumsi Buah",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "Pada prinsipnya semua buah-buahan adalah baik, karena banyak mengandung air, serat dan vitamin yang dibutuhkan oleh tubuh manusia. Banyak jenis buah-buahan yang tersedia dan dapat dibeli di tanah suci, namun kita harus cermat mengkonsumsinya agar terhindar dari penyakit atau kondisi kesehatan yang menurun karena salah mengkonsumsi buah, seperti terjadi diare atau menimbulkan asam lambung berlebih (gastritis/maag)."),
          SizedBox(
            height: 10,
          ),
          Text("Tips mengkonsumsi buah-buahan selama menjalankan ibadah haji:"),
          SizedBox(
            height: 10,
          ),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: 14,
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
