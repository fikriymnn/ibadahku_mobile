import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/textWidgets.dart';

class List4 extends StatelessWidget {
  const List4({super.key});

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
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Mengoptimalkan Status Kesehatan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25.0),
          Text(
            '1. Ketahui status kesehatan diri sendiri',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10.0),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: 15,
            ),
            listItems: [
              "Periksa kesehatan (medical check-up) sebelum pemeriksaan yang dilakukan pemerintah untuk pemeriksaan kesehatan haji, apakah dalam keadaan sehat, sakit atau memiliki keterbatasan.",
              "Bila sehat, ditingkatkan kesehatannya sampai optimal, bila sakit diobati terlebih dahulu dan bila memiliki keterbatasan diusahakan untuk mengurangi keterbatasannya.",
            ],
          ),
          SizedBox(height: 25.0),
          Text(
            '2. Imunisasi meningitis meningokokus',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10.0),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: 15,
            ),
            listItems: [
              "Banyaknya orang yang datang ke tanah suci dalam waktu yang bersamaan menyebabkan tingginya resiko tertular penyakit infeksi. Meningitis merupakan penyakit menular oleh bakteri Neisseria meningitis. Penularan sangat cepat dengan target pada selaput otak atau sumsum tulang belakang. Gejala biasanya panas tinggi, nyeri kepala, kaku kuduk, timbul bercak merah di kulit.",
              "Vaksinasi meningitis dapat mencegah tertularnya penyakit meningitis atau menurunkan resiko keparahan akibat terinfeksi bakteri meningkokus.",
              "Imunisasi dilaksanakan di Puskesmas atau rumah sakit.",
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "3. Rutin melakukan aktivitas fisik/olahraga",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10.0),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: 15,
            ),
            listItems: [
              "Ibadah haji banyak menuntut kegiatan fisik, seperti thawaf, sa'i, melempar jumrah. Maka tubuh perlu menyesuaikan kemampuan fisik dengan melakukan aktivitas fisik berolahraga ringan secara rutin sebelum berangkat ke tanah suci. Kegiatan fisik yang dianjurkan seperti jalan cepat dan jogging 5-6 km setiap kali latihan.",
              "Selain itu biasakan latihan kesegaran jasmani dengan melakukan senam kesegaran jasmani.",
              "Bagi calon jemaah yang mempunyai resiko penyakit atau sudah menderita penyakit seperti hipertensi, diabetes hendaknya berkonsultasi dengan petugas kesehatan sebelum melkukan latihan.",
            ],
          )
        ],
      ),
    );
  }
}
