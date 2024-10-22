import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/audioPlayerWidget.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class DzikirHajiDanUmrohScreen extends StatefulWidget {
  const DzikirHajiDanUmrohScreen({super.key});

  @override
  State<DzikirHajiDanUmrohScreen> createState() =>
      _DzikirHajiDanUmrohScreenState();
}

class _DzikirHajiDanUmrohScreenState extends State<DzikirHajiDanUmrohScreen> {
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
            text: "Dzikir Haji & Umroh",
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
                  // Text(
                  //     style: TextStyle(
                  //         fontSize: sizeHeading, fontWeight: FontWeight.bold),
                  //     "Doa Keseharian"),
                  // SizedBox(
                  //   height: 30,
                  // ),
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
                              penjelasan: keutamaanHaji[index]["penjelasan"],
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
    required String penjelasan,
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
        title == ""
            ? Container()
            : Text(
                '$title',
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: sizeTitle),
              ),
        SizedBox(height: title == "" ? 0 : 10.0),
        penjelasan == ""
            ? Container()
            : Text(
                '$penjelasan',
                style: TextStyle(
                    fontWeight: FontWeight.normal, fontSize: sizeTitle),
              ),
        SizedBox(height: penjelasan == "" ? 0 : 10.0),
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
        //AudioPlayingWidget()
        //Text('Risiko kesehatan: $risiko'),
        // const SizedBox(height: 16.0),
      ],
    );
  }

  List keutamaanHaji = [
    {
      "no": "1",
      "title": "Niat Umroh",
      "penjelasan": "",
      "ayat":
          "نَوَيْتُ العُمْرَةَ وَأَحْرَمْتُ بِهَا لِلهِ تَعَالَى لَبَّيْكَ اللَّهُمَّ بعُمْرَة",
      "latin":
          "nawaitul ‘umrata wa ahramtu bihi lillahi ta’ala labbaika Allahumma ‘umratan.",
      "arti":
          "Artinya: Aku niat melaksanakan umrah dan berihram karena Allah Swt. Aku sambut panggilan-Mu, ya Allah untuk berumrah.",
      "img": ""
    },
    {
      "no": "2",
      "title": "Niat Haji",
      "penjelasan": "",
      "ayat":
          "نَوَيْتُ الْحَجَّ وَأَحْرَمْتُ بِهِ لِلهِ تَعَالَى لَبَّيْكَ اللَّهُمَّ بحَجًَةِ",
      "latin":
          "nawaitul hajja wa ahramtu bihi lillahi ta’ala labbaika Allahumma hajjah.",
      "arti":
          "Artinya: Aku niat melaksanakan haji dan berihram karena Allah Swt. Aku sambut panggilan-Mu, ya Allah untuk berhaji.",
      "img": ""
    },
    {
      "no": "3",
      "title": "Baccan Talbiyah",
      "penjelasan": "",
      "ayat":
          "لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ. لَبَّيْكَ لَا شَرِيكَ لَكَ لَبَّيْكَ إِنَّ الْحَمْدَ والنِّعْمَةَ لَكَ وَالْمُلْكُ لَا شَرِيكَ لَكَ.",
      "latin":
          "Labbaikallaahumma labbaik. Labbaika laa syariika laka labbaik. Innal hamda wa ni'mata laka wal mulk, laa syariika lak.",
      "arti":
          "Artinya: Aku memenuhi panggilan-Mu, ya Allah aku memenuhi panggilan-Mu. Aku memenuhi panggilan-Mu, tiada sekutu bagi-Mu, aku memenuhi panggilan-Mu. Sesungguhnya segala puji dan nikmat adalah milik-Mu, begitu juga seluruh kerajaan, tiada sekutu bagi-Mu.",
      "img": ""
    },
    {
      "no": "4",
      "title": "Doa Masuk Kota Mekkah",
      "penjelasan": "",
      "ayat":
          "اللَّهُمَّ هَذَا حَرَمُكَ وَأَمْنُكَ، فَحَرِمْ لَحْمِي وَدَمِيْ وَبَشَرِيْ عَلَى النَّارِ وَ آمِنِيْ مِنْ عَذَابِكَ يَوْمَ تَبْعَثُ عِبَادَكَ، وَاجْعَلْنِي مِنْ أَوْلِيَا بِكَ وَأَهْلِ طَاعَتِكَ، يَارَبَّ الْعَالَمِينَ",
      "latin":
          "Allâhumma hâdzâ haramuka wa amnuka, faharrim lahmî wa damî wa basyarî ‘alân nâri wa âminnî min ‘adzâbika yauma tabʻatsu ‘ibâdaka, waj’alnî min auliyâika wa ahli thâ’atika, yâ rabbal ‘âlamîna.",
      "arti":
          "Artinya: Ya Allah, ini adalah tanah haram-Mu dan negeri aman-Mu. Haramkanlah daging, darah dan kulitku atas api neraka. Dan amankanlah aku dari azab-Mu pada hari Engkau membangkitkan hamba-hamba-Mu. Dan jadikanlah aku termasuk kelompok kekasih-Mu dan orang-orang yang rajin serta taat kepada-Mu, wahai Rabb seru sekalian alam.",
      "img": ""
    },
    {
      "no": "5",
      "title": "Doa Masuk Masjidil Haram",
      "penjelasan": "",
      "ayat":
          "أَعُوْذُ بِاللهِ العَظِيْمِ وَبِوَجْهِهِ الْكَرِيْمِ وَسُلْطَانِهِ الْقَدِيْمِ مِنَ الشَّيْطَانِ الرَّجِيْمِ. بِسْمِ اللهِ وَالْحَمْدُ لِلهِ. أَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِ سَيِّدِنَا مُحَمَّدٍ. اَللَّهُمَّ اغْفِرْ لِي ذُنُوْبِي وَافْتَحْ لِي أَبْوَابَ رَحْمَتِكَ",
      "latin":
          "A‘ûdzu billâhil ‘azhîm wa biwajhihil karîm wa sulthânihil qadîm minas syaithânir rajîm. Bismillâhi wal hamdulillâh. Allâhumma shalli wa sallim ‘alâ sayyidinâ muhammadin wa ‘alâ âli sayyidinâ muhammadin. Allâhummaghfirlî dzunûbî waftahlî abwâba rahmatik.",
      "arti":
          "Artinya: Aku berlindung kepada Allah Yang Maha Besar, kepada Dzat-Nya Yang Maha Mulia, dan kepada kerajaan-Nya Yang Sedia dari setan yang terlontar. Dengan nama Allah dan segala puji bagi Allah. Hai Tuhanku, berilah shalawat dan sejahtera atas Sayyidina Muhammad dan atas keluarga Sayyidina Muhammad. Hai Tuhanku, ampuni untukku segala dosaku. Buka lah bagiku segala pintu rahmat-Mu.",
      "img": ""
    },
    {
      "no": "6",
      "title": "Doa Ketika Melihat Ka'bah",
      "penjelasan": "",
      "ayat":
          "اللَّهُمَّ زِدْ هَذَا الْبَيْتَ تَشْرِيفًا وَتَعْظِيمًا وَتَكْرِيمًا وَمَهَابَةً، وَزِدْ مَنْ شَرّفَهُ وَكَرّمَهُ مِمَّنْ حَجَّهُ أَوِاعْتَمَرَهُ تَشْرِيفًا وَتَكْرِيمًا وَتَعْظِيمًا وَبِرًّا",
      "latin":
          "Allāhumma zid hādzal bayta tasyrīfan wa ta‘zhīman wa takrīman wa mahābatan, wa zid man syarrafahū wa karramahū min man hajjahū aw i’tamarahū tasyrīfan wa takrīman wa ta‘zhīman wa birran.",
      "arti":
          "Artinya: Ya Allah, tambahkan kemuliaan, keagungan, kehormatan, dan kehebatan pada Baitullah ini. tambahkan juga kemuliaan, kehormatan, keagungan, dan kebaikan untuk orang-orang berhaji atau berumrah yang memuliakan dan menghormati Ka’bah",
      "img": ""
    },
    {
      "no": "7",
      "title": "Doa Thowaf",
      "penjelasan": "",
      "ayat":
          "رَبَّنَا أَتِنَا فِى الدُّنْيَا حَسَنَةً وَفِي اْلأَخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ",
      "latin":
          "rabbana atina fiddunya hasanah wa fil akhiroti hasanah waqina adzabannar",
      "arti":
          "Tidak ada doa khusus saat thowaf kecuali antara rukun yamani hingga hajar aswad maka di sunnahkan untuk membaca doa di atas",
      "img": ""
    },
    {
      "no": "8",
      "title": "Doa Menuju Maqam Ibrahim",
      "penjelasan": "",
      "ayat": "وَاتَّخِذُواْ مِن مَّقَامِ إِبْرَاهِيمَ مُصَلًّى",
      "latin": "Wattakhidzuu mim-maqoomi Ibraahiima mushallaa",
      "arti":
          "Artinya: Dan jadikanlah bagian dari makam Ibrahim itu sebagai tempat salat.",
      "img": ""
    },
    {
      "no": "9",
      "title": "Doa Di Atas Bukit Shofa Dan Marwa",
      "penjelasan": "Ketika Nabi SAW dekat dengan bukit Shafa, beliau membaca:",
      "ayat":
          "إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللهِ. أَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ.",
      "latin":
          "Innash-shofaa wal marwata min sya’aa-irillah. Abda-u bimaa bada-allaahu bih.",
      "arti":
          "Artinya: Sesungguhnya Shafa dan Marwah adalah termasuk sy’iar agama Allah. Aku memulai sa’i dengan apa yang didahulukan oleh Allah.",
      "img": ""
    },
    {
      "no": "10",
      "title": "",
      "penjelasan":
          "Kemudian beliau mulai dengan naik ke bukit Shafa, hingga beliau melihat Baitullah. Lalu menghadap kiblat, mem-baca kalimat tauhid dan takbir, serta membaca:",
      "ayat":
          "لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرٌ، لاَ إِلَـهَ إِلاَّ اللهُ وَحْدَهُ أَنْجَزَ وَعْدَهُ وَنَصَرَ عَبْدَهُ وَهَزَمَ اْلأَحْزَابَ وَحْدَهُ",
      "latin":
          "Laa ilaaha illallaah, wahdahu laa syariika lah, lahul mulku wa lahul hamd, wa huwa ‘alaa kulli syai-in qodiir, laa ilaaha illallaahu wahdah, anjaza wa’dah, wa nashoro ‘abdah, wa hazamal ahzaaba wahdah.",
      "arti":
          "Artinya: Tiada Tuhan yang berhak disembah selain Allah, Yang Maha Esa, Tiada sekutu bagi-Nya. Bagi-Nya kerajaan dan pujian. Dia-lah Yang Mahakuasa atas segala sesuatu. Tiada Tuhan yang ber-hak disembah selain Allah Yang Maha Esa, yang melaksanakan janji-Nya, membela hambaNya (Muhammad) dan menga-lahkan golongan musuh sendirian.",
      "img": ""
    },
    {
      "no": "10",
      "title": "Doa Di Hari Arafah",
      "penjelasan":
          "Mengutip Kitab Al-Adzkar karya Imam Nawawi terdapat sebuah hadits yang membahas mengenai bacaan doa dan dzikir ketika hari Arafah, Nabi Muhammad SAW bersabda, Sebaik-baik doa adalah doa yang dibacakan pada hari Arafah, dan sebaik-baik yang aku dan nabi-nabi terdahulu adalah bacaan:",
      "ayat":
          "لَا إِلَهَ إِلا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ المُلْكُ وَلَهُ الحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ",
      "latin":
          "Laa Ilaaha Illaallahu wahdahu laa syariika lah lahul mulku wa lahul hamdu wa huwa 'ala kulli syai'in qadiir",
      "arti":
          "Artinya: Tidak ada Tuhan selain Allah semata, tiada sekutu bagi-Nya. Dia memiliki kerajaan dan bagi-Nya segala puji. Dia atas segala sesuatu Mahakuasa.",
      "img": ""
    },
    {
      "no": "10",
      "title": "Doa Ketika Di Muzdalifah",
      "penjelasan":
          "Setelah sholat subuh Nabi Shallallahu'alaihi wasallam menghadap kiblat, berdoa, membaca takbir dan tahlil serta kalimat tauhid. beliau terus berdoa hingga fajar menyingsing kemudia beliau berangkat (ke Mina) sebelum matahari terbit (HR. Muslim 2/891)",
      "ayat": "",
      "latin": "",
      "arti": "",
      "img": ""
    },
    {
      "no": "10",
      "title": "Bertakbir Setiap Melempar Jamarot",
      "penjelasan":
          "Rasulullah Shallallahu'alaihi wasallam bertakbir pada setiap melempar tiga jumrah dengan batu kecil, kemudian beliau maju dan berdiri untuk berdoa dengan menghadap kiblat dan mengangkat kedua tangannya setelah melempar jumrah yang pertama dan kedua. Adapun untuk jumrah Aqabah, beliau melempar dan bertakbir, dan beliau tidak berdiri di situ, tapi langsung pergi (tidak berdoa). (HR. Al-Bukhari dengan fathul bari 3/583,3/584 dan 3/581. Muslim juga meriwayatkanya)",
      "ayat": "",
      "latin": "",
      "arti": "",
      "img": ""
    },
  ];
}
