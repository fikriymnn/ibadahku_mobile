import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../../widgets/customAppBar.dart';

class DoaDariHadistScreen extends StatefulWidget {
  const DoaDariHadistScreen({super.key});

  @override
  State<DoaDariHadistScreen> createState() => _DoaDariHadistScreenState();
}

class _DoaDariHadistScreenState extends State<DoaDariHadistScreen> {
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
        appBar: CustomAppbar(title: "Doa Dari Hadist", height: 56),
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
        // SizedBox(height: 10.0),
        // Text(
        //   '$title',
        //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: sizeTitle),
        // ),
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
      "title": "",
      "ayat":
          "اللّه أَكْبَرُ، اللَّهُمَّ أَهِلَّهُ عَلَيْنَا بِالْأَمْنِ وَالإِيمَانِ ، وَالسَّلامَةِ وَالإِسْلامِ، وَالتَّوْفِيْقِ لِمَا تُحِبُّ رَبَّنَا وَ تَرْضَى، رَبُّنَا و َرَبُّكَ اللَّهُ",
      "latin":
          "Allahu akbar, allahumma ahillahu alayna bil amni wal iimaani, wassalamati wal islami, wattaufiiqi lima tuhibbun rabbana watardha, rabbunaa wa rabbukallahu",
      "arti":
          "Artinya: Allah Maha Besar, Ya Allah, tampakkan bulan itu kepada kami dengan aman dan dalam keimanan, keselamatan dan keislaman. Dengan taufiq agar kami melakukan yang disukai dan diridhai oleh Rabb kami. Rabb kami dan Rabbmu (wahai bulan sabit) adalah Allah",
      "img": ""
    },
    {
      "no": "2",
      "title": "",
      "ayat":
          "ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ وَثَبَتَ الأَجْرُ إِنْ شَاءَ اللَّهُ",
      "latin":
          "Dzahabazzhama’u wabtallatil uruqu wa tsabatal ajru insya Allah.",
      "arti":
          "Artinya: Rasa haus telah hilang dan urat-urat telah basah, dan pahala telah ditetapkan insya Allah.",
      "img": ""
    },
    {
      "no": "3",
      "title": "",
      "ayat":
          "اللَّهُمَّ اهْدِنِى فِيمَنْ هَدَيْتَ وَعَافِنِى فِيمَنْ عَافَيْتَ وَتَوَلَّنِى فِيمَنْ تَوَلَّيْتَ وَبَارِكْ لِى فِيمَا أَعْطَيْتَ وَقِنِى شَرَّ مَا قَضَيْتَ فَإِنَّكَ تَقْضِى وَلاَ يُقْضَى عَلَيْكَ إِنَّهُ لاَ يَذِلُّ مَنْ وَالَيْتَ(وَلَا يَعِزُّ مَنْ عَادَيْتَ) تَبَارَكْتَ رَبَّنَا وَتَعَالَيْتَ",
      "latin":
          "Allahummahdi fiiman hadayta wa aafinii fiiman aafayta wa tawallani fiiman tawallayta wa baarikli fiiman a’thayta wafinii syarramaa qadhayta fa innaka taqdhii wala yuqdha alayka innahu la yudzillu man waalayta (wala yaizzu man aadzayta) tabaarakta rabbana wataalayta",
      "arti":
          "Artinya: Ya Allah, berilah aku petunjuk di antara orang-orang yang Engkau beri petunjuk, dan berilah aku keselamatan di antara orang-orang yang telah Engkau beri keselamatan, uruslah diriku di antara orang-orang yang telah Engkau urus, berkahilah untukku apa yang telah Engkau berikan kepadaku, lindungilah aku dari keburukan apa yang telah Engkau tetapkan, sesungguhnya Engkau Yang memutuskan dan tidak diputuskan kepadaku, sesungguhnya tidak akan hina orang yang telah Engkau jaga dan Engkau tolong (dan orang yang memusuhi Engkau tidak akan mulia). Engkau Maha Suci dan Maha Tinggi Engkau Rabb kami.",
      "img": ""
    },
    {
      "no": "4",
      "title": "",
      "ayat":
          "اللَّهُمَّ إِنِّي أَعُوذُ بِرِضَاكَ مِنْ سَخَطِكَ وَبِمُعَافَاتِكَ مِنْ عُقُوبَتِكَ وَأَعُوذُ بِكَ مِنْكَ لاَ أُحْصِى ثَنَاءً عَلَيْكَ أَنْتَ كَمَا أَثْنَيْتَ عَلَى نَفْسِكَ",
      "latin":
          "rAllahumma innii audzubiridhaka min sakhathika wa bi mua’fatika min ‘uquubatika wa a’udzubika minka laa uhshii tsana an ‘alayka anta kamaa atsnayta ‘alaa nafsika.",
      "arti":
          "Artinya: Ya Allah, aku berlindung dengan keridhaan-Mu dari kemarahan-Mu, dan dengan kesalamatan-Mu dari hukuman-Mu dan aku berlindung kepada-Mu dari siksa-Mu. Aku tidak mampu menghitung pujian dan sanjungan kepada-Mu, Engkau adalah sebagaimana yang Engkau sanjukan kepada diri-Mu sendiri",
      "img": ""
    },
    {
      "no": "5",
      "title": "",
      "ayat": "اللَّهُمَّ إِنَّكَ عَفُوٌّ  تُحِبُّ الْعَفْوَ فَاعْفُ عَنِّى",
      "latin": "Allahumma innaka ‘afuwwun tuhibbul ‘afwa fa’fu’anni",
      "arti":
          "Artinya: Ya Allah sesungguhnya Engkau Maha Pemaaf lagi Maha Mulia yang menyukai permintaan maaf, maafkanlah aku.",
      "img": ""
    },
    {
      "no": "6",
      "title": "",
      "ayat":
          "اَللّٰهُمَّ اِنِّى اَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا طَيِّبًا وَعَمَلاً مُتَقَبَّلاً",
      "latin":
          "Allahumma innii as-aluka 'ilmaan naafi'aan wa rizqoon thoyyibaan wa 'amalaan mutaqobbalaan",
      "arti":
          "Artinya: Ya Allah, sesungguhnya aku mohon kepada-Mu ilmu yang berguna, rezki yang baik dan amal yang baik Diterima. ",
      "img": ""
    },
    {
      "no": "7",
      "title": "",
      "ayat":
          "وَمِنْهُم مَّن يَقُولُ رَبَّنَآ ءَاتِنَا فِى ٱلدُّنْيَا حَسَنَةً وَفِى ٱلْءَاخِرَةِ حَسَنَةً وَقِنَا عَذَابَ ٱلنَّارِ",
      "latin":
          "Wa min-hum may yaqụlu rabbanā ātinā fid-dun-yā ḥasanataw wa fil-ākhirati ḥasanataw wa qinā 'ażāban-nār",
      "arti":
          "Artinya: Ya Tuhan, berilah kami kebaikan di dunia dan kebaikan di akhirat, serta selamatkanlah kami dari siksa neraka.",
      "img": ""
    },
    {
      "no": "8",
      "title": "",
      "ayat":
          "رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِن لَّدُنكَ رَحْمَةً ۚ إِنَّكَ أَنتَ ٱلْوَهَّابُ",
      "latin":
          "Rabbanā lā tuzig qulụbanā ba'da iż hadaitanā wa hab lanā mil ladungka raḥmah, innaka antal-wahhāb",
      "arti":
          "Artinya: Ya Tuhan, janganlah Engkau jadikan hati kami condong kepada kesesatan sesudah Engkau berikan petunjuk kepada kami, dan karuniakanlah kepada kami rahmat dari sisi-Mu. Sungguh hanya Engkaulah Yang Maha Pemberi karunia.",
      "img": ""
    },
  ];
}
