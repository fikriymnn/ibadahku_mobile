import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class PeringatanThowaf extends StatelessWidget {
  const PeringatanThowaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Peringatan Thowaf",
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
                  "Peringatan-peringatan Thowaf",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "1. Jika ketika thowaf sesorang ragu, maka:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                BulletedList(
                  bulletColor: blackColor,
                  listItems: [
                    Text(
                        "Jika keraguannya muncul ketika sedang thowaf, misalnya dia ragu apakah thowafnya sudah 3 atau 4 putaran makan hendaknya dia membuang keraguan dan dia memegang yang pasti. Dalam hal ini dia anggap saja baru thowaf 3 putaran, karena yang ke-4 diragukan."),
                    Text(
                        "Jika muncul keraguan ketika thowaf lantas ada orang lain yang dipercaya memberitahunya tentang jumlah putaran thowaf, maka dia boleh menerima berita orang tersebut."),
                    Text(
                        "Jika keraguannya muncul setelah selesai thowaf, maka tidak perlu dipedulikan."),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2. Jika ketika thowaf tiba-tiba iqomat sholat, maka:",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                BulletedList(
                  bulletColor: blackColor,
                  listItems: [
                    Text(
                        "Seseorang boleh menghentikan thowafnya untuk sholat dan setelah sholat melanjutkan kembali thowafnya dari tempat dimana dia berhenti.")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "3. Jika mendapati kepadatan ketika thowaf, maka:",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                BulletedList(
                  bulletColor: blackColor,
                  listItems: [
                    Text(
                        "Boleh melanjutkan thowafnya di lantai yang lain di al-Masjid al-Haram."),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "4. Setelah thowaf jangan lupa:",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                BulletedList(
                  bulletColor: blackColor,
                  listItems: [
                    Text(
                        "Kembali lagi menutup bahu kanan sebelum melaksanakan sholat sunnah dua rakaat di belakang maqom Ibrahim. Karena makruh apabila seseorang sholat dalam kondisi bahunya tersingkap."),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
