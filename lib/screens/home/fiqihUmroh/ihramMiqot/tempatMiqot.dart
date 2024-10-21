import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/textWidgets.dart';

class TempatMiqot extends StatelessWidget {
  const TempatMiqot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Miqot",
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
                  "Pengertian Miqot",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Secara bahasa, miqot berasal dari bahasa Arab yang berarti \u0022waktu\u0022. Menurut NU Online, miqot adalah batasan waktu dan tempat yang telah ditentukan untuk memulai ibadah haji atau umrah."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Ada dua jenis miqot yang perlu diketahui, yaitu miqot zamani dan miqot makani, yang keduanya wajib dipahami oleh jamaah haji dan umrah."),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1. Miqot Zamani",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Text(
                      "Miqot zamani adalah waktu yang ditetapkan untuk melaksanakan ibadah haji, dimulai dari awal bulan Syawal hingga fajar tanggal 10 Dzulhijjah, hari raya Idul Adha. Sementara untuk umrah, tidak ada batas waktu tertentu sehingga bisa dilakukan kapan saja sepanjang tahun. Jika miqot zamani tidak dilaksanakan pada waktu yang ditetapkan, ibadah haji dianggap tidak sah dan hanya dihitung sebagai umrah biasa."),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2. Miqot Makani",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Text(
                      "Miqot makani adalah tempat yang telah ditentukan untuk memulai ibadah haji atau umrah. Jamaah diharuskan memakai pakaian ihram dan berniat untuk melaksanakan ibadah. Lokasi miqot makani dapat berbeda bagi setiap jamaah, tergantung pada tempat mereka memulai ihram."),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Sesuai dengan hadis Rasulullah SAW, miqot makani untuk penduduk Madinah adalah di Dzulhulaifah, untuk penduduk Syam di Juhfah, penduduk Nejd di Qarn, dan penduduk Yaman di Yalamlam. Jamaah dari tempat lain yang melewati daerah tersebut harus mengikuti miqot yang telah ditetapkan di sana."),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Lokasi Miqot",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Beberapa lokasi miqat makani yang telah ditetapkan oleh Rasulullah SAW adalah:"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1. Juhfah",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Text(
                      "Juhfah terletak sekitar 183 km barat laut Mekkah dan merupakan miqat bagi jamaah dari Mesir, Yordania, Suriah, dan Lebanon."),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "2. Dzulhulaifah (Bir Ali)",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Text(
                      "Dzulhulaifah, juga dikenal sebagai Bir Ali, adalah miqat bagi jamaah yang datang dari Madinah, termasuk jamaah Indonesia."),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "3. Qarnul Manazil",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Text(
                      "Berada dekat pegunungan Taif, Qarnul Manazil menjadi miqat bagi jamaah dari Indonesia dan Dubai."),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "4. Zatu Irqin",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Text(
                      "Zatu Irqin terletak sekitar 94 km timur laut Mekkah dan menjadi miqat bagi jamaah dari Irak, Iran, dan negara-negara sekitarnya."),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "5. Yalamlam",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Text(
                      "Terletak sekitar 92 km dari tenggara Mekkah, Yalamlam menjadi miqat bagi jamaah dari Yaman, Pakistan, India, Jepang, dan China. Jamaah Indonesia yang melewati Yalamlam akan melakukan ihram di pesawat ketika mendekati lokasi ini."),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Miqat bagi Jamaah Indonesia",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Jamaah haji Indonesia biasanya mengikuti miqat sesuai gelombang keberangkatan. Untuk gelombang pertama, miqat dilakukan di Dzulhulaifah (Bir Ali). Untuk gelombang kedua, miqat dilakukan saat pesawat melintasi Yalamlam atau Qarn Al Manazil, atau ketika tiba di Bandara King Abdulaziz, Jeddah, yang sudah dianggap sah sebagai miqat berdasarkan fatwa MUI."),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Jika jamaah melakukan ihram setelah melewati batas miqat tanpa kembali ke tempat miqat, mereka harus membayar denda (dam). Untuk menghindari denda, jamaah disarankan kembali ke tempat miqat dan melakukan ihram."),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Hal yang Perlu Diperhatikan saat Miqat Makani",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Sebelum melakukan miqat makani, ada beberapa hal penting yang harus diperhatikan:"),
                SizedBox(
                  height: 10.0,
                ),
                BulletedList(
                  bulletColor: blackColor,
                  listItems: [
                    Text(
                        "Jamaah laki-laki sebaiknya mengenakan pakaian ihram sebelum mencapai miqat, agar bisa langsung berniat ketika melewati miqat."),
                    Text(
                        "Saat di Bir Ali, jamaah dapat melakukan shalat sunnah ihram dua rakaat sebelum melafalkan niat. Bagi jamaah wanita yang sedang berhalangan, niat ihram bisa dilakukan di bus."),
                    Text(
                        "Setelah miqat, jamaah harus menaati semua larangan ihram selama menjalankan ibadah haji atau umrah."),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
