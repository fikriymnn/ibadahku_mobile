import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../constants/colors.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/textWidgets.dart';

class List5 extends StatefulWidget {
  const List5({super.key});

  @override
  State<List5> createState() => _List5State();
}

class _List5State extends State<List5> {
  double sizeTitle = 18;
  double sizeNum = 16;
  double sizeText = 14;

  final double maxTitle = 28;
  final double minTitle = 14;
  final double maxNum = 26;
  final double minNum = 12;
  final double maxText = 24;
  final double minText = 10;

  void upSize() {
    setState(() {
      if (sizeTitle < maxTitle) sizeTitle++;
      if (sizeNum < maxNum) sizeNum++;
      if (sizeText < maxText) sizeText++;
    });
  }

  void downSize() {
    setState(() {
      if (sizeTitle > minTitle) sizeTitle--;
      if (sizeNum > minNum) sizeNum--;
      if (sizeText > minText) sizeText--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Kesehatan", height: 56),
      floatingActionButton:
          ButtonChangeSizeTextWidget(UppSize: upSize, DownSize: downSize),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Menjaga Kesehatan Selama Umroh dan Haji',
            style: TextStyle(fontSize: sizeTitle, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25.0),
          Text(
            '1. Menjaga pola makan',
            style: TextStyle(fontSize: sizeNum, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10.0),
          BulletedList(
            bulletColor: blackColor,
            style: TextStyle(
              color: blackColor,
              fontSize: sizeText,
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
          const SizedBox(
            height: 25,
          ),
          Text(
            "2. Menjaga kebersihan diri dan lingkungan",
            style: TextStyle(
              fontSize: sizeNum,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BulletedList(
            bulletColor: Colors.transparent,
            style: TextStyle(
              color: blackColor,
              fontSize: sizeText,
              fontWeight: FontWeight.w600,
            ),
            listItems: [
              "Kebersihan diri",
              BulletedList(
                bullet: Text(
                  "-",
                  style: TextStyle(
                    fontSize: sizeText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                bulletColor: blackColor,
                style: TextStyle(
                  color: blackColor,
                  fontSize: sizeText,
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
                    fontSize: sizeText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                bulletColor: blackColor,
                style: TextStyle(
                  color: blackColor,
                  fontSize: sizeText,
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
                    fontSize: sizeText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                bulletColor: blackColor,
                style: TextStyle(
                  color: blackColor,
                  fontSize: sizeText,
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
