import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

class SholatBelakangMaqom extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  SholatBelakangMaqom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ButtonChangeSizeTextWidget(UppSize: () {
        upDownNotifier.value.upSize();
        upDownNotifier.notifyListeners();
      }, DownSize: () {
        upDownNotifier.value.downSize();
        upDownNotifier.notifyListeners();
      }),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ValueListenableBuilder(
                valueListenable: upDownNotifier,
                builder: (context, upDown, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sholat di belakang Maqom Ibrahim",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Setelah thowaf disunnahkan untuk melakukan sholat sunnah dua rakaat di belakang maqom Ibrahim.",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      BulletedList(
                        bulletColor: blackColor,
                        listItems: [
                          Text(
                            "Jika selesai thowaf qudum jangan lupa untuk menutup kembali bahu kanan dengan kain ihram.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Ketika menuju ke belakang maqom Ibrahim seraya membaca firman Allah SWT.:",
                                style: TextStyle(
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  textAlign: TextAlign.right,
                                  "وَاتَّخِذُوۡا مِنۡ مَّقَامِ اِبۡرٰهٖمَ مُصَلًّى‌",
                                  style: TextStyle(
                                    fontSize: upDown.sizeArabic,
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
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Sholat dua rakaat, pada rakaat pertama membaca surat al-Kaafirun dan rakaat kedua membaca surat al-Ikhlas (HR Muslim no 1218)",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
