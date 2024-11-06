import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../functions/upDownSize.dart';
import '../../../../widgets/buttonChangeSizeTextWidget.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class SyaratSai extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  SyaratSai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Syarat Sa'i", height: 56),
      floatingActionButton: ButtonChangeSizeTextWidget(
        UppSize: () {
          upDownNotifier.value.upSize();
          upDownNotifier.notifyListeners();
        },
        DownSize: () {
          upDownNotifier.value.downSize();
          upDownNotifier.notifyListeners();
        },
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ValueListenableBuilder(
                valueListenable: upDownNotifier,
                builder: (context, upDown, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Syarat-syarat Sa'i.",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Dari buku Fiqih Sunnah 3, ada beberapa syarat agar ibadah sa'i sah:",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        bulletColor: Colors.transparent,
                        numberColor: blackColor,
                        bulletType: BulletType.numbered,
                        listItems: [
                          Text(
                            "Dikerjakan setelah rangkaian ibadah thawaf di sekeliling Kakbah, dan tidak dibenarkan bila melaksanakan sa'i terlebih dahulu.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Dilakukan sebanyak tujuh kali putaran.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Memulainya dari Safa dan berakhir di Marwah. Diperkirakan jarak anatara kedua bukit sekitar 420 meter.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dilakukan pada tempat sa'i, yaitu jalan memanjang antara Shafa dan Marwah, sebab Nabi SAW mengerjakannya demikian. Dan dalam haditsnya beliau bersabda,",
                                style: TextStyle(
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                ),
                              ),
                              Center(
                                child: Text(
                                  textAlign: TextAlign.right,
                                  "خُذُوا عنِّي مَنَاسِكَكُمْ",
                                  style: TextStyle(
                                    fontSize: upDown.sizeArabic,
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "\u0022Ambillah tata cara ibadah haji kalian dariku.\u0022 (HR Muslim)",
                                style: TextStyle(
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
