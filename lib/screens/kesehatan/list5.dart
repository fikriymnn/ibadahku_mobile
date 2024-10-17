import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/textWidgets.dart';

class List5 extends StatelessWidget {
  const List5({super.key});

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
            'Menjaga Kesehatan Selama Umroh dan Haji',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25.0),
          Text(
            '1. Menjaga pola makan',
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
              "Pola makan yang dianjurkan adalah makan teratur tiga kali sehari, jangan terlambat.",
              "Makan makanan karbohidrat lebih banyak dari biasanya.",
              "Minum segelas susu setiap hari.",
              "Perbanyak konsumsi sayur, bila perlu ditambah suplemen vitamin dan mineral.",
              "Pilih makanan yang bersih, terlindung dari pencemaran.",
              "Perhatikan kadaluarsa makanan kemasan dan masih utuh.",
              "Perhatikan makanan dari katering, apakah masih layak dikonsumsi atau tidak.",
              "Makanan yang diberi dari katering segera dikonsumsi tidak lebih dari 2 jam karena akan rusak.",
              "Minum air mineral minimal 1 gelas setiap jam.",
              "Jangan makan terlalu kenyang dan hindari makanan yang mengandung lemak saat perjalanan jauh.",
              "Cuci tangan memakai sabun sebelum dan sesudah makan.",
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "2. Menjaga kebersihan diri dan lingkungan",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BulletedList(
            bulletColor: Colors.transparent,
            style: TextStyle(
              color: blackColor,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            listItems: [
              "Kebersihan diri",
              BulletedList(
                bullet: Text(
                  "-",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                bulletColor: blackColor,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 15,
                ),
                listItems: [
                  "Mandi cukup sehari sekali",
                  "Gunakan masker yang dibasahi untuk melembabkan udara, mencegah mimisan dan masuknya kotoran/debu.",
                  "Gunakan nasal spray untuk mengurangi rasa kering sehingga rongga hidung terasa lembab dan fungsi hidung jauh lebih baik.",
                  "Cuci tangan dengan sabun sebelum makan dan setelah buang air besar",
                ],
              ),
              "Kebersihan lingkungan",
              BulletedList(
                bullet: Text(
                  "-",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                bulletColor: blackColor,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 15,
                ),
                listItems: [
                  "Menjaga kerapian dan kebersihan kamar, atur barang secara rapi.",
                  "Jemur pakaian pada tempatnya.",
                  "Tidak merokok, beresiko terjadi kebakaran.",
                  "Tidak meludah sembarang tempat.",
                  "Buang sampah di tempatnya, bila belum menemukan tempat sampah, taruh dulu sampah di plastik.",
                ],
              ),
              "Menjaga kebersihan toilet/WC",
              BulletedList(
                bullet: Text(
                  "-",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                bulletColor: blackColor,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 15,
                ),
                listItems: [
                  "Sediakan kantong plastik untuk membuang tisu atau pembalut wanita, karena biasanya tidak tersedia tempat sampah.",
                  "Pilih toilet yang tidak becek, saluran air lancar.",
                  "Bersihkan sebelum dan sesudah menggunakan toilet.",
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
