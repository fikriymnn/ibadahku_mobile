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
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "4. Latihan penyesuaian terhadap musim dingin di Arab Saudi",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: 15,
            ),
            listItems: [
              "Perlu diperhatikan perubahan suhu cukup ekstrim dari Indonesia ke Arab Saudi.",
              "Pada musim dingin suhu dapat mencapai nol derajat dengan kelembaban udara 24% (sangat kering).",
              "Lakukan latihan penyesuaian pada dini hari sesudah subuh, di tempat terbuka, di dataran tinggi atau pegunungan dengan melakukan latihan kebugaran jasmani dan jalan kaki setiap hari selama 1 jam selama 1 pekan pada pekan terakhir menjelang keberangkatan.",
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "5. Pengaturan berat badan dengan gizi seimbang",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: blackColor,
            ),
            listItems: [
              "Berat badan yang ideal dapat mempertahankan kondisi kesehatan yang optimal.",
              "Perlu pengaturan menu gizi seimbang yang terdiri dari karbohidrat, protein, susu sayur dan buah.",
              "Perbanyak makan sayuran hijau.",
              "Makan buah yang banyak mengandung vitamin seperti jeruk, jambu biji.",
              "Pilih makanan rendah lemak, batasi yang mengandung gula dan garam.",
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "6. Bawa obat pribadi yang diperlukan",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: blackColor,
            ),
            listItems: [
              "Bawa obat ringan mengatasi batuk pilek, luka ringan atau diare. Pilih yang praktis dibawa, tidak menyebabkan kantuk.",
              "Bila menderita penyakit tertentu yang membutuhkan pengobatan terus menerus seperti hipertensi, diabetes, siapkan obat untuk penyakit tersebut sejumlah kebutuhan selama perjalanan haji.",
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "7. Bawa obat pribadi yang diperlukan",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: blackColor,
            ),
            listItems: [
              "Sengatan dingin dapat menggagnggu tubuh mulai ringan sampai berat dengan tanda-tanda kulit gatal, menggigil, gigi gemeretak, rasa kaku, kram, kaku otot, mati rasa, sulit konsentrasi, bicara tidak jelas, sudah bernafas, kesadaran menurun.",
              "Bila mengalami seperti tanda di atas segera hubungi petugas kesehatan.",
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "8. Kesiapan menghadapi musim panas",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: blackColor,
            ),
            listItems: [
              "Perbanyak minum air putih atau air zam-zam untuk menghindari dehidrasi",
              "Gunakan pelembab muka dan tubuh, mengurangi sengatan matahari.",
              "Gunakan kacamata hitam, payung untuk melindungi dari sinar matahari.",
              "Gunakan pelembab bibir agar tidak pecah-pecah",
              "Pakai pakaian yang nyaman dan berwarna gelap.",
              "Pakai alas kaki yang nyaman dan ringan.",
            ],
          ),
        ],
      ),
    );
  }
}
