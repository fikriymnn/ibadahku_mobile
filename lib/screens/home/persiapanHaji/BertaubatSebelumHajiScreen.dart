import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../widgets/customAppBar.dart';

class BertaubatSebelumHajiScreen extends StatefulWidget {
  const BertaubatSebelumHajiScreen({super.key});

  @override
  State<BertaubatSebelumHajiScreen> createState() =>
      _BertaubatSebelumHajiScreenState();
}

class _BertaubatSebelumHajiScreenState
    extends State<BertaubatSebelumHajiScreen> {
  late TabController _tabController;
  double sizeHeading = 17;
  double sizeTitle = 16;
  double sizeAyat = 16;
  double sizeArti = 14;

  void _uppSize() {
    setState(() {
      sizeTitle++;
      sizeAyat++;
      sizeArti++;
      sizeHeading++;
    });
  }

  void _downSize() {
    setState(() {
      sizeTitle--;
      sizeAyat--;
      sizeArti--;
      sizeHeading--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(title: "Bertaubat Sebelum Haji", height: 56),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Text(
                  //     style: TextStyle(fontSize: sizeHeading),
                  //     "Menjaga keikhlasan dalam melaksanakan ibadah haji merupakan tantangan yang penting karena ibadah ini tidak hanya mengandalkan fisik, tetapi juga melibatkan hati dan niat. Keikhlasan memastikan bahwa ibadah haji yang dilakukan diterima oleh Allah Subhanahu wa Ta’ala.Lima tips untuk menjaga keikhlasan saat berhaji:"),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: keutamaanHaji.length,
                        itemBuilder: (BuildContext context, int index) {
                          return buildCondition(
                              context: context,
                              number: keutamaanHaji[index]["no"],
                              title: keutamaanHaji[index]["title"],
                              Penjelasan: keutamaanHaji[index]["penjelasan"],
                              ayat: keutamaanHaji[index]["ayat"],
                              artinya: keutamaanHaji[index]["arti"],
                              sizePenjelasan: sizeTitle,
                              sizeAyat: sizeAyat,
                              sizeArti: sizeArti);
                        }),
                  ),

                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: syaratTaubat.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: buildCondition(
                                context: context,
                                number: syaratTaubat[index]["no"],
                                title: syaratTaubat[index]["title"],
                                Penjelasan: syaratTaubat[index]["penjelasan"],
                                ayat: syaratTaubat[index]["ayat"],
                                artinya: syaratTaubat[index]["arti"],
                                sizePenjelasan: sizeTitle,
                                sizeAyat: sizeAyat,
                                sizeArti: sizeArti),
                          );
                        }),
                  ),
                ],
              ),
            )),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  _uppSize();
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryColor, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.text_increase,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  _downSize();
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: primaryColor, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      Icons.text_decrease,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildCondition({
    required BuildContext context,
    required String number,
    required String title,
    required String Penjelasan,
    required String ayat,
    required String artinya,
    double sizePenjelasan = 16,
    double sizeAyat = 16,
    double sizeArti = 14,
    String risiko = "",
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title == ""
                ? Container()
                : Text(
                    '$number.',
                    style: TextStyle(
                        fontSize: sizeTitle, fontWeight: FontWeight.bold),
                  ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${title}',
                      style: TextStyle(
                          fontSize: sizeTitle, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: Penjelasan == "" ? 0 : 10.0),
                    Text(
                      '$Penjelasan',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: sizePenjelasan,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: ayat == "" ? 0 : 10.0),
                    ayat == ""
                        ? Container()
                        : Text(
                            '$ayat',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: sizeAyat),
                          ),
                    SizedBox(height: artinya == "" ? 0 : 10.0),
                    artinya == ""
                        ? Container()
                        : Text('$artinya',
                            style: TextStyle(fontSize: sizeArti)),
                    SizedBox(
                      height: Penjelasan == "" && artinya == "" ? 0 : 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),

        //Text('Risiko kesehatan: $risiko'),
        // const SizedBox(height: 16.0),
      ],
    );
  }

  List keutamaanHaji = [
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Bertaubat sebelum melaksanakan ibadah haji adalah salah satu langkah penting yang sebaiknya dilakukan oleh setiap Muslim yang hendak menunaikan rukun Islam kelima ini. Taubat merupakan tindakan kembali kepada Allah dengan penyesalan atas segala dosa yang telah diperbuat dan berjanji untuk tidak mengulanginya. Ibadah haji adalah momen suci yang tidak hanya menuntut persiapan fisik dan finansial, tetapi juga memerlukan persiapan spiritual yang matang. Salah satu bentuk persiapan tersebut adalah membersihkan diri dari segala dosa melalui taubat yang tulus, agar ibadah haji bisa dijalankan dengan khusyuk dan diterima oleh Allah SWT.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "1",
      "title": "Pentingnya Bertaubat dalam Islam",
      "penjelasan":
          "Taubat memiliki posisi yang sangat penting dalam ajaran Islam. Setiap manusia tidak luput dari dosa, baik disadari maupun tidak, dan Allah SWT memberikan kesempatan yang luas bagi hamba-Nya untuk memperbaiki diri melalui taubat. Dalam Al-Qur’an, Allah SWT berfirman:",
      "ayat":
          "وَتُوْبُوْٓا اِلَى اللّٰهِ جَمِيْعًا اَيُّهَ الْمُؤْمِنُوْنَ لَعَلَّكُمْ تُفْلِحُوْنَ",
      "arti":
          "Artinya: Dan bertaubatlah kamu semua kepada Allah, wahai orang-orang yang beriman, agar kamu beruntung (QS. An-Nur: 31)"
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Ayat ini menegaskan bahwa taubat adalah kunci untuk meraih keberuntungan di dunia dan akhirat. Allah SWT memerintahkan orang-orang yang beriman untuk senantiasa bertaubat karena taubat adalah jalan menuju pengampunan dan kasih sayang-Nya. Ini juga menjadi penekanan bahwa taubat tidak hanya diperuntukkan bagi mereka yang merasa telah melakukan dosa besar, tetapi juga bagi setiap Muslim agar selalu memperbaiki dirinya.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "2",
      "title": "Taubat Sebelum Ibadah Haji",
      "penjelasan":
          "Ibadah haji adalah salah satu bentuk pengabdian tertinggi seorang Muslim kepada Allah. Sebelum berangkat menunaikan ibadah haji, seorang Muslim diharapkan bertaubat dengan sungguh-sungguh, membersihkan dirinya dari segala dosa yang pernah dilakukan, baik dosa terhadap Allah maupun terhadap sesama manusia. Taubat sebelum haji menjadi bagian dari persiapan batin yang sangat penting karena ibadah haji menuntut kesucian hati, ketenangan pikiran, dan kebersihan jiwa.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "0",
      "title": "",
      "penjelasan":
          "Dalam Al-Qur’an, Allah SWT juga menekankan pentingnya persiapan yang baik sebelum menjalankan ibadah haji:",
      "ayat":
          "وَتَزَوَّدُوْا فَاِنَّ خَيْرَ الزَّادِ التَّقْوٰىۖ وَاتَّقُوْنِ يٰٓاُولِى الْاَلْبَابِ",
      "arti":
          "Artinya: Berbekallah karena sesungguhnya sebaik-baik bekal adalah takwa. Bertakwalah kepada-Ku wahai orang-orang yang mempunyai akal sehat (QS. Al-Baqarah: 197)."
    },
    {
      "no": "3",
      "title": "",
      "penjelasan":
          "Bekal terbaik untuk ibadah haji adalah takwa, yang mencakup kepatuhan kepada Allah dan kesucian jiwa yang dihasilkan dari taubat yang ikhlas. Dengan taubat, seorang Muslim membersihkan hatinya dari dosa, memperbarui niatnya untuk beribadah hanya kepada Allah, dan membuka jalan untuk memperoleh ridha serta keberkahan-Nya.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "4",
      "title": "Syarat-Syarat Taubat",
      "penjelasan":
          "Dalam Islam, taubat yang diterima oleh Allah harus memenuhi beberapa syarat agar dianggap sah dan tulus. Syarat-syarat taubat ini telah dijelaskan dalam berbagai sumber, termasuk Al-Qur’an dan hadis. Syarat-syarat tersebut adalah sebagai berikut:",
      "ayat": "",
      "arti": ""
    },
  ];

  List syaratTaubat = [
    {
      "no": "a",
      "title": "Penyesalan yang Tulus",
      "penjelasan":
          "Seseorang yang benar-benar bertaubat harus merasakan penyesalan yang sungguh-sungguh, menyadari bahwa dosa yang diperbuat adalah pelanggaran terhadap perintah Allah, dan merasa menyesal atas kelalaiannya. Taubat dimulai dari penyesalan yang mendalam atas dosa yang telah dilakukan. Rasulullah SAW bersabda:",
      "ayat": "وصححه الألباني في صحيح ابن ماجة",
      "arti":
          "Artinya: Penyesalan adalah taubat (Dishahihkan oleh Albani di dalam Shahih Ibnu Majah)."
    },
    {
      "no": "b",
      "title": "Berhenti dari Dosa",
      "penjelasan":
          "Syarat kedua dari taubat adalah berhenti sepenuhnya dari perbuatan dosa yang telah dilakukan. Tidak mungkin taubat diterima jika seseorang masih terus melakukan dosa yang sama. Sebagai contoh, jika seseorang telah melakukan penipuan, maka ia harus berhenti melakukan tindakan tersebut dan bertekad untuk tidak mengulanginya.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "c",
      "title": "Berjanji Tidak Akan Mengulangi",
      "penjelasan":
          "Taubat juga harus disertai dengan tekad kuat untuk tidak mengulangi dosa yang sama di masa depan. Taubat yang tulus melibatkan perubahan sikap dan perilaku sebagai bentuk pengabdian kepada Allah.",
      "ayat": "",
      "arti": ""
    },
    {
      "no": "d",
      "title": "Mengembalikan Hak Orang Lain (Jika Diperlukan)",
      "penjelasan":
          "Jika dosa yang dilakukan melibatkan hak orang lain, seperti mencuri atau merampas harta, maka syarat taubat yang sah adalah mengembalikan hak tersebut kepada pemiliknya atau meminta maaf jika terjadi pelanggaran terhadap kehormatan atau hak orang lain. Ini penting untuk memastikan bahwa hubungan baik dengan sesama manusia juga diperbaiki.",
      "ayat": "",
      "arti": ""
    },
  ];
}
