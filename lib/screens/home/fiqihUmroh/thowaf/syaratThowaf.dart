import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/customAppBar.dart';
import '../../../../widgets/textWidgets.dart';

class SyaratThowaf extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  SyaratThowaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Syarat Thowaf",
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
                        "Syarat Thowaf dan Rukunnya",
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
                        "Syarat-syarat sah thowaf yaitu:",
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
                          Text(
                            "Suci dari najis dan hadats (kecil maupun besar). Saat melakukan thowaf, kesucian dari hadats kecil dan besar wajib dijaga, demikian juga kesucian badan, pakaian, dan tempat yang dilalui dari najis. Jika selama thowaf terjadi hadats atau terkena najis, wajib bersuci dan menghilangkan najis terlebih dahulu, kemudian melanjutkan thowaf dari tempat kejadian. Namun, lebih utama mengulang dari awal.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Aurat harus tertutup selama thowaf. Jika aurat terbuka saat thowaf, wajib segera ditutup dan thowaf dilanjutkan dari titik tersebut. Orang yang tidak bisa menutup aurat tetap boleh thowaf tanpa perlu mengulang.",
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
                                  "أَنْ لاَ يَحُجَّ بَعْدَ العَامِ مُشْرِكٌ وَلاَ يَطُوفَ بِالْبَيْتِ عُرْيَانٌ",
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
                                "\u0022Ketahuilah, setelah tahun ini tidak boleh ada orang musyrik yang berhaji dan tidak boleh thawaf dalam keadaan telanjang di Ka’bah.\u0022",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: blackColor,
                                  fontSize: upDown.sizeText,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Memulai thowaf dari hajar aswad. Start awal thowaf terhitung dari hajar aswad, sehingga tidak dianggap sah jika memulai sebelum sampai hajar aswad.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Menyejajarkan pundak kiri dengan hajar aswad di awal dan akhir putaran. Memulai thowaf wajib dengan cara menyejajarkan pundak kiri dengan hajar aswad, tidak diperbolehkan saat memulai putaran thowaf, bagian dari pundak kiri lebih maju dari posisi hajar aswad. Demikian pula saat mengakhiri putaran thowaf, pundak kiri disejajarkan dengan hajar aswad sebagaimana saat memulai putaran thowaf atau lebih maju sedikit hingga sampai arah pintu Ka’bah, agar seluruh bagian Ka’bah secara yakin thowaf merata di seluruh bagian Ka’bah.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Menjadikan Ka'bah di sebelah kiri. Seseorang harus selalu memastikan bahwa Ka’bah berada di sebelah kirinya di setiap langkah thowafnya, sehingga jika di tengah putaran tidak sesuai posisi tersebut, wajib segera ke posisi yang benar dan melanjutkan hitungan putaran thowaf dari tempat tersebut.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Semua bagian tubuh dan pakaian harus berada di luar bangunan Ka'bah, Syadzarwan, dan Hijr Isma'il. Jika bagian tubuh atau pakaian memasuki area tersebut, putaran tidak sah dan harus segera kembali ke posisi yang benar.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Thowaf dilakukan sebanyak tujuh kali putaran. Jika ragu tentang jumlah putaran, ambil jumlah yang lebih sedikit dan tambahkan putarannya. Keraguan yang muncul setelah thowaf selesai tidak mempengaruhi sahnya.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Selama thowaf, tidak boleh ada niat selain untuk melakukan thowaf. Tujuan lain yang mengganggu fokus, seperti menghindari sentuhan lawan jenis atau penagih utang, akan membatalkan thowaf.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                          Text(
                            "Thowaf harus dilakukan di dalam Masjidil Haram. Meskipun ada perluasan masjid, thowaf tetap sah selama masih di dalam area Masjidil Haram. Beberapa ulama berpendapat tidak boleh keluar dari tanah haram, tetapi ada yang mengatakan sah selama masih di kawasan Masjidil Haram.",
                            style: TextStyle(
                              fontSize: upDown.sizeText,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Rukun-rukun thowaf yaitu:",
                        style: TextStyle(
                          fontSize: upDown.sizeText,
                          color: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      BulletedList(
                        bulletColor: Colors.transparent,
                        bulletType: BulletType.numbered,
                        numberColor: blackColor,
                        style: TextStyle(
                          color: blackColor,
                          fontSize: upDown.sizeText,
                        ),
                        listItems: [
                          "Niat",
                          "Thowaf sambil berjalan kaki",
                          "Memulai thowaf dari Hajar Aswad",
                          "Menempatkan Baitullah berada di samping kirinya",
                          "Memasukkan Hijir Ismail dalam Thowaf",
                          "Semua badan harus berada di luar Baitullah. Andaikata ia berjalan di atas trap Ka’bah maka tidak sah thowafnya, sebab trap Ka’bah termasuk bagian dari bangunan Ka’bah. Demikian juga andaikata tangannya (lurus ke bawah) segaris dengan trap Ka’bah, maka juga tidak sah tawafnya. Masalah ini sangat pelik dan jarang orang yang mau memperhatikannya. Karena itu, usahakan kita mengetahuinya.",
                          "Thowaf dilaksanakan antara Ka'bah dan Maqom Ibrahim.",
                          "Menyempurnakan tujuh kali putaran, tidak boleh lebih tidak boleh kurang."
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
