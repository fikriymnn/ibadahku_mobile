import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';

class SholatBelakangMaqom extends StatelessWidget {
  const SholatBelakangMaqom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sholat di belakang Maqom Ibrahim",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Setelah thowaf disunnahkan untuk melakukan sholat sunnah dua rakaat di belakang maqom Ibrahim."),
              BulletedList(
                bulletColor: blackColor,
                listItems: [
                  Text(
                      "Jika selesai thowaf qudum jangan lupa untuk menutup kembali bahu kanan dengan kain ihram."),
                  Column(
                    children: [
                      Text(
                          "Ketika menuju ke belakang maqom Ibrahim seraya membaca firman Allah SWT.:"),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          textAlign: TextAlign.right,
                          "وَاتَّخِذُوۡا مِنۡ مَّقَامِ اِبۡرٰهٖمَ مُصَلًّى‌",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\u0022Dan jadikanlah sebahagian maqam Ibrahim tempat shalat.\u0022",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  Text(
                      "Sholat dua rakaat, pada rakaat pertama membaca surat al-Kaafirun dan rakaat kedua membaca surat al-Ikhlas (HR Muslim no 1218)"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
