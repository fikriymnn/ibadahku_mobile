import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class JenisThowaf extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  JenisThowaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Jenis Thowaf",
        height: 56,
      ),
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
                        "Jenis-jenis Thowaf",
                        style: TextStyle(
                          fontSize: upDown.sizeTitle,
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Ada beberapa jenis thowaf, yaitu:",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        bulletType: BulletType.numbered,
                        bulletColor: Colors.transparent,
                        numberColor: blackColor,
                        listItems: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Thowaf Ziarah atau Thowaf Ifadah",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: upDown.sizeText,
                                ),
                              ),
                              Text(
                                "Thowaf Ifadah dilakukan oleh jemaah haji setelah menyelesaikan rangkaian manasik di Mina, seperti melempar Jumrah Aqabah, menyembelih hewan kurban, dan bercukur atau memotong rambut. Setelah itu, mereka kembali ke Makkah untuk melaksanakan thowaf ini. Thowaf Ifadah adalah salah satu rukun haji, sehingga jika tidak dilakukan, haji dianggap tidak sah dan tidak bisa diganti dengan denda atau dam.",
                                style: TextStyle(
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                ),
                              ),
                              Text(
                                "Thowaf ini juga disebut Thowaf Ziarah karena dilakukan setelah meninggalkan Mina untuk mengunjungi Baitullah. Disebut Thowaf Ifadah karena jemaah kembali dari Mina ke Makkah, dan disebut juga Thowaf Haji karena merupakan bagian dari rukun haji.",
                                style: TextStyle(
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Thowaf Qudum",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: upDown.sizeText,
                                ),
                              ),
                              Text(
                                "Thowaf Qudum dilakukan oleh orang-orang yang datang dari luar Makkah, bukan oleh penduduk Makkah dan sekitarnya, saat mereka memasuki kota Makkah. Thowaf ini mirip dengan salat dua rakaat tahiyatul masjid. Hukumnya adalah sunah.",
                                style: TextStyle(
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Thowaf Wada'",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: upDown.sizeText,
                                ),
                              ),
                              Text(
                                "Thowaf Wada’ adalah thowaf terakhir yang dilakukan oleh jemaah haji sebelum meninggalkan Makkah. Thowaf ini merupakan salah satu kewajiban haji, sehingga jika tidak dilaksanakan, orang tersebut berdosa dan harus membayar denda atau dam. Meski begitu, meninggalkan thowaf ini tidak membatalkan ibadah haji.",
                                style: TextStyle(
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Thowaf Nadzar",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: upDown.sizeText,
                                ),
                              ),
                              Text(
                                "Thowaf Nadzar merupakan thowaf yang dinazarkan. Thowaf Nadzar hukumnya wajib dikerjakan karena nazarnya dan waktunya bisa kapan saja.",
                                style: TextStyle(
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Thowaf Sunnah",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: upDown.sizeText),
                              ),
                              Text(
                                "Thowaf Sunnah adalah thowaf yang dilakukan setiap kali seseorang masuk ke Masjidil Haram tanpa mengenakan pakaian ihram dan tidak terkait dengan rangkaian ibadah haji. Thowaf ini bisa dilakukan kapan saja jika memungkinkan dan tidak perlu diikuti dengan Sa’i. Oleh karena itu, jika thowaf ini tidak dilakukan, hal itu tidak akan mempengaruhi keabsahan ibadah haji dan tidak menimbulkan kewajiban membayar dam.",
                                style: TextStyle(
                                  fontSize: upDown.sizeText,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
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
