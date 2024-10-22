import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KeutamaanKotaMadinahScreen extends StatefulWidget {
  const KeutamaanKotaMadinahScreen({super.key});

  @override
  State<KeutamaanKotaMadinahScreen> createState() =>
      _KeutamaanKotaMadinahScreenState();
}

class _KeutamaanKotaMadinahScreenState
    extends State<KeutamaanKotaMadinahScreen> {
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
            text: "Keutamaan Kota Madinah",
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
                            image: AssetImage("assets/kota-madinah.jpg"),
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
                    SizedBox(height: title == "" ? 0 : 10.0),
                    Text(
                      '$Penjelasan',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: sizePenjelasan,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: Penjelasan == "" ? 0 : 10.0),
                    ayat == ""
                        ? Container()
                        : Text(
                            '$ayat',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: sizeAyat),
                          ),
                    SizedBox(height: ayat == "" ? 0 : 10.0),
                    artinya == ""
                        ? Container()
                        : Text('$artinya',
                            style: TextStyle(fontSize: sizeArti)),
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
          "Kota Madinah memiliki keutamaan yang sangat besar dalam Islam, karena merupakan salah satu dari dua kota suci, selain Mekkah. Beberapa keutamaan Madinah meliputi:",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "1",
      "title": "Madinah Sebagai Kota Suci",
      "penjelasan": "Nabi Shallallahu alaihi wa sallam bersabda:",
      "ayat": "إنَّ إبْراهِيمَ حَرَّمَ مَكَّةَ وإنِّي حَرَّمْتُ المَدِينَةَ",
      "arti":
          "Sesungguhnya Ibrahim telah menjadikan kota Makkah sebagai kota suci, dan Aku menjadikan kota Madinah sebagai kota suci. (HR. Muslim: 136247)",
      "img": ""
    },
    {
      "no": "2",
      "title": "Kota Yang Baik Dan Nyaman",
      "penjelasan":
          "Nabi Shallallahu alaihi wa sallam menamai kota ini dengan sebutan Thabah dan Thaybah, dua nama ini diambil dari kata Thayyib yang menunjukkan bahwa kota ini adalah tempat yang baik dan nyaman.",
      "ayat": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "3",
      "title": "Kebaikan Bagi Yang Tinggal Di Madinah",
      "penjelasan": "Rasulullah Shallallahu alaihi wa sallam bersabda:",
      "ayat": "المدينة خير لهم لو كانوا يعلمون",
      "arti":
          "Kota Madinah adalah lebih baik bagi mereka an­daikan mereka mengetahuinya. (HR. Bukhari: 1875, Muslim: 1363)",
      "img": ""
    },
    {
      "no": "4",
      "title": "Menghilangkan keburukan dan kerusakan",
      "penjelasan":
          "Kota Madinah akan menghilangkan keburukan dan kerusakan dari dada manusia, sebagaimana tukang pandai besi membersihkan kotoran besi yang jelek. Rasulullah Shallallahu alaihi wa sallam bersabda:",
      "ayat": "هي المدينة تنفي الناس كما ينفي الكير خبث الحديد",
      "arti":
          "Sesungguhnya kota Madinah akan menghilang­kan keburukan manusia, sebagaimana panasnya besi menghilangkan karat dari besinya. (HR. Bukhari: 1871, Muslim: 1382)",
      "img": ""
    },
    {
      "no": "5",
      "title": "Iman Akan Kembali Ke kota Madinah",
      "penjelasan":
          "Setiap muslim pasti merasakan dalam dirinya ada kerinduan untuk kembali ke kota Madinah, kembali pergi ke sana dan shalat di dalamnya. Rasulullah Shallallahu alaihi wa sallam bersabda:",
      "ayat":
          "إن الإيمان ‌لَيَأْرِزُ إلى المدينة كما تأرز الحيَّةُ إلى جُحْرها",
      "arti":
          "Sesungguhnya iman akan kembali ke Madi­nah sebagaimana seekor ular kembali ke dalam sarangnya. (HR. Bukhari: 1876, Muslim: 147).",
      "img": ""
    },
    {
      "no": "6",
      "title": "Dijaga Dari Wabah Tha’un dan Dajjal",
      "penjelasan": "Rasulullah Shallallahu alaihi wa sallam bersabda:",
      "ayat":
          "عَلَى أنْقابِ المَدِينَةِ مَلائِكَةٌ، لا يَدْخُلُها الطَّاعُونُ، ولا الدَّجَّالُ",
      "arti":
          "Di setiap sudut pintu masuk Madinah ada para malaikat yang menjaga, Tha’un dan Dajjal tidak bisa masuk Madinah. (HR Bukhari: 1880, Muslim: 1379)",
      "img": ""
    },
    {
      "no": "7",
      "title": "Kota Yang Diberkahi",
      "penjelasan": "Rasulullah Shallallahu alaihi wa sallam bersabda: ",
      "ayat":
          "اللَّهُمَّ اجْعَلْ بالمَدِينَةِ ضِعْفَيْ ما جَعَلْتَ بمَكَّةَ مِنَ البَرَكَةِ",
      "arti":
          "Ya Allah jadikanlah keberkahan Madinah dua kali lipat dari keberkahan kota Makkah. (HR. Bukhari: 1885, Muslim: 1369)",
      "img": ""
    },
    {
      "no": "8",
      "title": "Pahala Besar Bagi Yang Sabar Tinggal Di Madi­nah",
      "penjelasan": "Rasulullah Shallallahu alaihi wa sallam bersabda: ",
      "ayat":
          "لَا يَصْبِرُ عَلَى لَأْوَائِهَا وَشِدَّتِهَا أَحَدٌ إِلَّا كُنْتُ لَهُ شَهِيدًا أَوْ شَفِيعًا يَوْمَ الْقِيَامَةِ",
      "arti":
          "Tidaklah seseorang bersabar atas kesempitan dan kesusahan di kota Madinah melainkan aku akan menjadi saksi atau pemberi syafa’at kepadanya pada hari kiamat. (HR. Muslim: 1377)",
      "img": ""
    },
    {
      "no": "9",
      "title":
          "Diharamkan binatang buruan, menebang po­hon liar, memotong durinya, atau mencabut rerumputannya.",
      "penjelasan": "Rasulullah Shallallahu alaihi wa sallam bersabda: ",
      "ayat":
          "إنَّ إبراهيمَ حَرَّمَ مكَّةَ، وإنِّي حَرَّمْتُ المدينةَ ما بيْن لابَتَيْها، لا يُقْطَعُ عِضَاهُها، ولا يُصادُ صَيْدُه",
      "arti":
          "Sesungguhnya Ibrahim telah menjadikan kota Makkah sebagai kota suci, dan Aku menjadikan kota Madinah sebagai kota suci diantara dua be­batuan hitam. Tidak boleh ditebang pohon yang berduri, dan tidak boleh diburu binatang buruan­nya. (HR. Muslim: 1362)",
      "img": ""
    },
    {
      "no": "10",
      "title": "Dilarang Berbuat Kemungkaran Di Kota Ma­dinah",
      "penjelasan": "Rasulullah Shallallahu alaihi wa sallam bersabda: ",
      "ayat":
          "المدينة حَرَمٌ ما بين عَيْرٍ إلى ثَوْرٍ، فمن أحدث فيها حَدَثًا، أو آوى مُحْدِثًا؛ فعليه لعنة الله والملائكة والناس أجمعين، لا يقبل الله منه يوم القيامة صَرْفً",
      "arti":
          "Madinah itu tanah haram antara gunung ini dan gunung itu, barangsiapa yang berbuat perkara baru yang mungkar atau melindungi pelaku bid’ah maka baginya laknat Allah, malaikat dan laknat seluruh manusia. Allah tidak akan meneri­ma amalannya yang wajib juga yang sunnah pada hari kiamat. (HR. Muslim: 1370)",
      "img": ""
    },
  ];
}
