import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KabahScreen extends StatefulWidget {
  const KabahScreen({super.key});

  @override
  State<KabahScreen> createState() => _KabahScreenState();
}

class _KabahScreenState extends State<KabahScreen> {
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
        appBar: AppBar(
          centerTitle: false,
          title: TextWidget(
            text: "Ka'bah",
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
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/haji_kabah.webp"),
                            fit: BoxFit.cover)),
                  ),
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
                              img: keutamaanHaji[index]["img"],
                              sizePenjelasan: sizeTitle,
                              sizeAyat: sizeAyat,
                              sizeArti: sizeArti);
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
    required String img,
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
            // title == ""
            //     ? Container()
            //     : Text(
            //         '$number.',
            //         style: TextStyle(
            //             fontSize: sizeTitle, fontWeight: FontWeight.bold),
            //       ),
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
                    SizedBox(height: title == "" ? 0 : 10.0),
                  ],
                ),
              ),
            ),
          ],
        ),
        Text(
          '$Penjelasan',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: sizePenjelasan, fontWeight: FontWeight.normal),
        ),
        SizedBox(height: Penjelasan == "" ? 0 : 10.0),
        ayat == ""
            ? Container()
            : Text(
                '$ayat',
                textDirection: TextDirection.rtl,
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: sizeAyat),
              ),
        SizedBox(height: ayat == "" ? 0 : 10.0),
        artinya == ""
            ? Container()
            : Text('$artinya', style: TextStyle(fontSize: sizeArti)),
        SizedBox(
          height: ayat == "" ? 0 : 10,
        ),
        img == ""
            ? Container()
            : Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover)),
              ),
        SizedBox(
          height: img == "" ? 0 : 10,
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
          "Ka'bah adalah salah satu bangunan paling suci dalam Islam dan memiliki makna yang sangat penting dalam sejarah agama Islam. Terletak di Masjidil Haram, Mekah, Ka'bah adalah titik pusat yang menjadi kiblat umat Muslim di seluruh dunia saat melaksanakan ibadah shalat. Ka'bah juga merupakan pusat utama dalam pelaksanaan ibadah haji, di mana umat Islam dari seluruh dunia berkumpul setiap tahun untuk melaksanakan ritual yang ditentukan oleh syariat.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "0",
      "title": "Sejarah Ka'bah",
      "penjelasan":
          "Ka'bah memiliki sejarah yang sangat panjang dan mendalam, yang melibatkan para nabi dan tokoh penting dalam Islam. Menurut keyakinan Islam, Ka'bah pertama kali dibangun oleh Nabi Ibrahim AS bersama putranya, Nabi Ismail AS, atas perintah Allah SWT. Dalam Al-Qur'an, pembangunan Ka'bah oleh Nabi Ibrahim dan Ismail disebutkan dengan jelas:",
      "ayat":
          "وَاِذْ بَوَّأْنَا لِاِبْرٰهِيْمَ مَكَانَ الْبَيْتِ اَنْ لَّا تُشْرِكْ بِيْ شَيْـًٔا وَّطَهِّرْ بَيْتِيَ لِلطَّاۤىِٕفِيْنَ وَالْقَاۤىِٕمِيْنَ وَالرُّكَّعِ السُّجُوْدِ",
      "arti":
          "Artinya: (Ingatlah) ketika Kami menempatkan Ibrahim di tempat Baitullah (dengan berfirman), “Janganlah engkau mempersekutukan Aku dengan apa pun, sucikanlah rumah-Ku bagi orang-orang yang tawaf, mukim (di sekitarnya), serta rukuk (dan) sujud.(QS. Al-Hajj: 26)",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "Nabi Ibrahim AS bersama Nabi Ismail AS membangun Ka'bah sebagai rumah ibadah yang dikhususkan untuk menyembah Allah SWT. Bangunan ini kemudian menjadi tempat ibadah bagi umat Islam hingga saat ini, dan Ka'bah disebut sebagai Baitullah atau Rumah Allah, meskipun Allah SWT tidak memerlukan rumah fisik. Ka'bah melambangkan keesaan Allah dan menjadi pusat perhatian umat Islam dalam beribadah.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": " Kedudukan Ka'bah dalam Islam",
      "penjelasan":
          "Ka'bah adalah kiblat bagi umat Islam di seluruh dunia. Setiap Muslim yang melaksanakan shalat, di manapun mereka berada, akan menghadap ke arah Ka'bah. Hal ini ditetapkan berdasarkan perintah Allah dalam Al-Qur'an:",
      "ayat":
          "قَدْ نَرٰى تَقَلُّبَ وَجْهِكَ فِى السَّمَاۤءِۚ فَلَنُوَلِّيَنَّكَ قِبْلَةً تَرْضٰىهَاۖ فَوَلِّ وَجْهَكَ شَطْرَ الْمَسْجِدِ الْحَرَامِۗ وَحَيْثُ مَا كُنْتُمْ فَوَلُّوْا وُجُوْهَكُمْ شَطْرَهٗۗ وَاِنَّ الَّذِيْنَ اُوْتُوا الْكِتٰبَ لَيَعْلَمُوْنَ اَنَّهُ الْحَقُّ مِنْ رَّبِّهِمْۗ وَمَا اللّٰهُ بِغَافِلٍ عَمَّا يَعْمَلُوْنَ",
      "arti":
          "Artinya: Sungguh, Kami melihat wajahmu (Nabi Muhammad) sering menengadah ke langit. Maka, pasti akan Kami palingkan engkau ke kiblat yang engkau sukai. Lalu, hadapkanlah wajahmu ke arah Masjidilharam. Di mana pun kamu sekalian berada, hadapkanlah wajahmu ke arah itu. Sesungguhnya orang-orang yang diberi kitab benar-benar mengetahui bahwa (pemindahan kiblat ke Masjidilharam) itu adalah kebenaran dari Tuhan mereka. Allah tidak lengah terhadap apa yang mereka kerjakan.(QS. Al-Baqarah: 144)",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          "JKa'bah adalah pusat dari seluruh ritual ibadah haji, yang merupakan salah satu dari lima rukun Islam. Para jamaah haji diwajibkan melakukan thawaf (mengelilingi Ka'bah) sebanyak tujuh kali sebagai bagian dari rangkaian ibadah haji. Selain itu, jamaah haji juga dianjurkan untuk berdoa di sekitar Ka'bah, karena tempat ini dianggap sebagai lokasi yang sangat mustajab untuk berdoa.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "",
      "penjelasan":
          " Ka'bah menjadi simbol utama dari tauhid (keesaan Allah). Tidak ada patung atau gambar di dalam atau di sekitar Ka'bah, yang menegaskan ajaran Islam tentang penyembahan hanya kepada Allah SWT. Ka'bah adalah tempat di mana seluruh umat Islam datang untuk menunjukkan penghormatan dan pengabdian hanya kepada Tuhan yang satu.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
  ];
}
