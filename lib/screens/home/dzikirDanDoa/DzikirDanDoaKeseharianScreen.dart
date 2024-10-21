import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class DzikirDanDoaKeseharianScreen extends StatefulWidget {
  const DzikirDanDoaKeseharianScreen({super.key});

  @override
  State<DzikirDanDoaKeseharianScreen> createState() =>
      _DzikirDanDoaKeseharianScreenState();
}

class _DzikirDanDoaKeseharianScreenState
    extends State<DzikirDanDoaKeseharianScreen> {
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
            text: "Dzikir & Doa KEseharian",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: sizeHeading, fontWeight: FontWeight.bold),
                      "Doa Keseharian"),
                  SizedBox(
                    height: 30,
                  ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 200,
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           image: AssetImage("assets/peta_miqat.jpg"),
                  //           fit: BoxFit.cover)),
                  // ),
                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: keutamaanHaji.length,
                        itemBuilder: (BuildContext context, int index) {
                          int num = index + 1;
                          return buildCondition(
                              context: context,
                              number: num.toString(),
                              title: keutamaanHaji[index]["title"],
                              ayat: keutamaanHaji[index]["ayat"],
                              artinya: keutamaanHaji[index]["arti"],
                              latin: keutamaanHaji[index]["latin"],
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
    required String latin,
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
        Divider(
          height: 2,
          color: Colors.grey,
        ),
        SizedBox(height: 10.0),
        Text(
          '$title',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: sizeTitle),
        ),
        SizedBox(height: 10.0),
        Text(
          '$ayat',
          textDirection: TextDirection.rtl,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: sizeAyat),
        ),

        SizedBox(height: 10.0),
        Text(
          '$latin',
          textAlign: TextAlign.start,
          style:
              TextStyle(fontSize: sizePenjelasan, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Text('$artinya', style: TextStyle(fontSize: sizeArti)),
        SizedBox(
          height: 30,
        ),

        //Text('Risiko kesehatan: $risiko'),
        // const SizedBox(height: 16.0),
      ],
    );
  }

  List keutamaanHaji = [
    {
      "no": "1",
      "title": "Doa Memakai Pakaian",
      "ayat":
          "اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ خَيْرِهِ وَخَيْرِ مَا هُوَ لَهُ ، وَأَعُوْذُ بِكَ مِنْ شَرِّهِ وَشَرِّ مَا هُوَ لَهُ",
      "latin":
          "Allahumma inni as'aluka min khairi wa khaira ma huwa lahu, wa a'udzubika min syarrihi wa syarri ma huwa lahu.",
      "arti":
          "Artinya: Ya Allah, sesungguhnya aku memohon kepada-Mu kebaikan pakaian ini dan kebaikan sesuatu yang di dalamnya, dan aku berlindung kepada-Mu dari keburukan pakaian ini dan keburukan sesuatu yang ada di di dalamnya.",
      "img": ""
    },
    {
      "no": "2",
      "title": "Doa Melepaskan Pakaian",
      "ayat":
          "اللَّهُمَّ لَكَ الحَمْدُ أنْتَ كَسَوْتَنِيهِ أسألُكَ خَيْرَهُ وَخَيْرَ ما صُنِعَ لَهُ وأعُوذُ بِكَ مِنْ شَرِّهِ وَشَرّ ما صُنِعَ لَهُ",
      "latin":
          "Allahumma lakal hamdu anta kasautanihi, as-aluka khairahu wa khaira ma shni'a lahu wa a'udzu bika min syarrihi wa syarri ma shuni'a lahu.",
      "arti":
          "Artinya: Ya Allah bagi-Mu segala puji. Engkau telah memakaikannya untukku, aku memohon kepada-Mu kebaikannya dan kebaikan apa yang ia dijadikan untuknya, dan aku berlindung dari keburukannya dan keburukan apa yang ia dijadikan untuknya.",
      "img": ""
    },
    {
      "no": "3",
      "title": "Doa Keluar Rumah",
      "ayat":
          "بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللَّهِ لَاحَوْلَ وَلَا قُوَّةَ الا بالله",
      "latin":
          "Bismillaahi tawakkaltu 'alal laahi laa haula walaa quwwata illaa billaah",
      "arti":
          "Artinya: Dengan nama Allah aku bertawakal kepada Allah tiada daya untuk memperoleh manfaat dan tiada pula kuasa untuk menolak mudarat melainkan dengan pertolongan Allah",
      "img": ""
    },
    {
      "no": "4",
      "title": "",
      "ayat":
          "اَللَّهُمَّ إِنِّيْ أَصْبَحْتُ أُشْهِدُكَ وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلاَئِكَتَكَ وَجَمِيْعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللهُ لاَ إِلَـهَ إِلاَّ أَنْتَ وَحْدَكَ لاَ شَرِيْكَ لَكَ، وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُوْلُكَ",
      "latin":
          "Allahumma inni ash-bahtu usy-hiduka wa usy-hidu hamalata ‘arsyika wa malaa-ikatak wa jami’a kholqik, annaka antallahu laa ilaha illa anta wahdaka laa syariika lak, wa anna Muhammadan ‘abduka wa rosuuluk.",
      "arti":
          "Artinya: Ya Allah, sesungguhnya aku di waktu pagi ini mempersaksikan Engkau, malaikat yang memikul ‘Arys-Mu, malaikat-malaikat dan seluruh makhluk-Mu, bahwa sesungguhnya Engkau adalah Allah, tiada ilah yang berhak disembah kecuali Engkau semata, tiada sekutu bagi-Mu dan sesungguhnya Muhammad adalah hamba dan utusan-Mu. (Dibaca 4X)",
      "img": ""
    },
    {
      "no": "5",
      "title": "",
      "ayat":
          "اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَاْلآخِرَةِ، اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِيْنِيْ وَدُنْيَايَ وَأَهْلِيْ وَمَالِيْ اللَّهُمَّ اسْتُرْ عَوْرَاتِى وَآمِنْ رَوْعَاتِى. اَللَّهُمَّ احْفَظْنِيْ مِنْ بَيْنِ يَدَيَّ، وَمِنْ خَلْفِيْ، وَعَنْ يَمِيْنِيْ وَعَنْ شِمَالِيْ، وَمِنْ فَوْقِيْ، وَأَعُوْذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِيْ",
      "latin":
          "Allahumma innii as-alukal ‘afwa wal ‘aafiyah fid dunyaa wal aakhiroh. Allahumma innii as-alukal ‘afwa wal ‘aafiyah fii diinii wa dun-yaya wa ahlii wa maalii. Allahumas-tur ‘awrootii wa aamin row’aatii. Allahummahfazh-nii mim bayni yadayya wa min kholfii wa ‘an yamiinii wa ‘an syimaalii wa min fawqii wa a’udzu bi ‘azhomatik an ughtala min tahtii.",
      "arti":
          "Artinya: Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan di dunia dan akhirat. Ya Allah, sesungguhnya aku memohon kebajikan dan keselamatan dalam agama, dunia, keluarga dan hartaku. Ya Allah, tutupilah auratku (aib dan sesuatu yang tidak layak dilihat orang) dan tenteramkanlah aku dari rasa takut. Ya Allah, peliharalah aku dari muka, belakang, kanan, kiri dan atasku. Aku berlindung dengan kebesaran-Mu, agar aku tidak disambar dari bawahku (oleh ular atau tenggelam dalam bumi dan lain-lain yang membuat aku jatuh).",
      "img": ""
    },
    {
      "no": "6",
      "title": "",
      "ayat":
          "اَللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَاْلأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيْكَهُ، أَشْهَدُ أَنْ لاَ إِلَـهَ إِلاَّ أَنْتَ، أَعُوْذُ بِكَ مِنْ شَرِّ نَفْسِيْ، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِيْ سُوْءًا أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ",
      "latin":
          "Allahumma ‘aalimal ghoybi wasy syahaadah faathiros samaawaati wal ardh. Robba kulli syai-in wa maliikah. Asyhadu alla ilaha illa anta. A’udzu bika min syarri nafsii wa min syarrisy syaythooni wa syirkihi, wa an aqtarifa ‘alaa nafsii suu-an aw ajurrohu ilaa muslim.",
      "arti":
          "Artinya: Ya Allah, Yang Maha Mengetahui yang ghaib dan yang nyata, wahai Rabb pencipta langit dan bumi, Rabb segala sesuatu dan yang merajainya. Aku bersaksi bahwa tidak ada ilah yang berhak disembah kecuali Engkau. Aku berlindung kepadaMu dari kejahatan diriku, setan dan balatentaranya (godaan untuk berbuat syirik pada Allah), dan aku (berlindung kepada-Mu) dari berbuat kejelekan terhadap diriku atau menyeretnya kepada seorang muslim.",
      "img": ""
    },
    {
      "no": "7",
      "title": "",
      "ayat":
          "بِسْمِ اللَّهِ الَّذِى لاَ يَضُرُّ مَعَ اسْمِهِ شَىْءٌ فِى الأَرْضِ وَلاَ فِى السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ",
      "latin":
          "Bismillahilladzi laa yadhurru ma’asmihi syai-un fil ardhi wa laa fis samaa’ wa huwas samii’ul ‘aliim.",
      "arti":
          "Artinya: Dengan nama Allah yang bila disebut, segala sesuatu di bumi dan langit tidak akan berbahaya, Dia-lah Yang Maha Mendengar lagi Maha Mengetahui. (Dibaca 3X)",
      "img": ""
    },
    {
      "no": "8",
      "title": "",
      "ayat":
          "رَضِيْتُ بِاللهِ رَبًّا، وَبِاْلإِسْلاَمِ دِيْنًا، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا",
      "latin":
          "Rodhiitu billaahi robbaa wa bil-islaami diinaa, wa bi-muhammadin shallallaahu ‘alaihi wa sallama nabiyya.",
      "arti":
          "Artinya: Aku ridha Allah sebagai Rabb, Islam sebagai agama dan Muhammad shallallahu ‘alaihi wa sallam sebagai nabi. (Dibaca 3X)",
      "img": ""
    },
    {
      "no": "9",
      "title": "",
      "ayat":
          "يَا حَيُّ يَا قَيُّوْمُ بِرَحْمَتِكَ أَسْتَغِيْثُ، وَأَصْلِحْ لِيْ شَأْنِيْ كُلَّهُ وَلاَ تَكِلْنِيْ إِلَى نَفْسِيْ طَرْفَةَ عَيْنٍ أَبَدًا",
      "latin":
          "Yaa Hayyu Yaa Qoyyum, bi-rohmatika as-taghiits, wa ash-lih lii sya’nii kullahu wa laa takilnii ilaa nafsii thorfata ‘ainin Abadan.",
      "arti":
          "Artinya: Wahai Rabb Yang Maha Hidup, wahai Rabb Yang Berdiri Sendiri (tidak butuh segala sesuatu), dengan rahmat-Mu aku minta pertolongan, perbaikilah segala urusanku dan jangan diserahkan kepadaku sekali pun sekejap mata (tanpa mendapat pertolongan dariMu).",
      "img": ""
    },
    {
      "no": "10",
      "title": "",
      "ayat":
          "أَصْبَحْنَا عَلَى فِطْرَةِ اْلإِسْلاَمِ وَعَلَى كَلِمَةِ اْلإِخْلاَصِ، وَعَلَى دِيْنِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِيْنَا إِبْرَاهِيْمَ، حَنِيْفًا مُسْلِمًا وَمَا كَانَ مِنَ الْمُشْرِكِيْنَ",
      "latin":
          "Ash-bahnaa ‘ala fithrotil islaam wa ‘alaa kalimatil ikhlaash, wa ‘alaa diini nabiyyinaa Muhammadin shallallahu ‘alaihi wa sallam, wa ‘alaa millati abiina Ibraahiima haniifam muslimaaw wa maa kaana minal musyrikin",
      "arti":
          "Artinya: Di waktu pagi kami memegang agama Islam, kalimat ikhlas (kalimat syahadat), agama Nabi kami Muhammad shallallahu ‘alaihi wa sallam, dan agama bapak kami Ibrahim, yang berdiri di atas jalan yang lurus, muslim dan tidak tergolong orang-orang musyrik.",
      "img": ""
    },
    {
      "no": "11",
      "title": "",
      "ayat": "سُبْحَانَ اللهِ وَبِحَمْدِهِ",
      "latin": "Subhanallah wa bi-hamdih.",
      "arti": "Artinya: Maha suci Allah, aku memuji-Nya. (Dibaca 100X)",
      "img": ""
    },
    {
      "no": "12",
      "title": "",
      "ayat":
          "لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ",
      "latin":
          "Laa ilaha illallah wahdahu laa syarika lah, lahul mulku walahul hamdu wa huwa ‘ala kulli syai-in qodiir.",
      "arti":
          "Artinya: Tidak ada ilah yang berhak disembah selain Allah semata, tidak ada sekutu bagiNya. Bagi-Nya kerajaan dan segala pujian. Dia-lah yang berkuasa atas segala sesuatu. (Dibaca 10X)",
      "img": ""
    },
    {
      "no": "13",
      "title": "",
      "ayat":
          "لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرُ",
      "latin":
          "Laa ilaha illallah wahdahu laa syarika lah, lahul mulku walahul hamdu wa huwa ‘ala kulli syai-in qodiir.",
      "arti":
          "Artinya: Tidak ada ilah yang berhak disembah selain Allah semata, tidak ada sekutu bagi-Nya. Milik Allah kerajaan dan segala pujian. Dia-lah yang berkuasa atas segala sesuatu. (Dibaca 10X dalam sehari)",
      "img": ""
    },
    {
      "no": "14",
      "title": "",
      "ayat":
          "سُبْحَانَ اللهِ وَبِحَمْدِهِ: عَدَدَ خَلْقِهِ، وَرِضَا نَفْسِهِ، وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ",
      "latin":
          "Subhanallah wa bi-hamdih, ‘adada kholqih wa ridhoo nafsih. wa zinata ‘arsyih, wa midaada kalimaatih.",
      "arti":
          "Artinya: Maha Suci Allah, aku memujiNya sebanyak makhluk-Nya, sejauh kerelaan-Nya, seberat timbangan ‘Arsy-Nya dan sebanyak tinta tulisan kalimat-Nya. (Dibaca 3X)",
      "img": ""
    },
    {
      "no": "15",
      "title": "",
      "ayat":
          "اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلاً مُتَقَبَّلاً",
      "latin":
          "Allahumma innii as-aluka ‘ilman naafi’a, wa rizqon thoyyibaa, wa ‘amalan mutaqobbalaa.",
      "arti":
          "Artinya: Ya Allah, sungguh aku memohon kepada-Mu ilmu yang bermanfaat (bagi diriku dan orang lain), rizki yang halal dan amal yang diterima (di sisi-Mu dan mendapatkan ganjaran yang baik). (Dibaca 1X setelah salam dari sholat shubuh)",
      "img": ""
    },
    {
      "no": "16",
      "title": "",
      "ayat": "أَسْتَغْفِرُ اللهَ وَأَتُوْبُ إِلَيْهِ",
      "latin": "Astagh-firullah wa atuubu ilaih.",
      "arti":
          "Artinya: Aku memohon ampun kepada Allah dan bertobat kepada-Nya. (Dibaca 100X dalam sehari)",
      "img": ""
    },
  ];
}
