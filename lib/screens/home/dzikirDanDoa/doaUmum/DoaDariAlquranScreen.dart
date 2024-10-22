import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class DoaDariAlQuranScreen extends StatefulWidget {
  const DoaDariAlQuranScreen({super.key});

  @override
  State<DoaDariAlQuranScreen> createState() => _DoaDariAlQuranScreenState();
}

class _DoaDariAlQuranScreenState extends State<DoaDariAlQuranScreen> {
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
            text: "Doa Dari Al-Qur'an",
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
      "title": "Doa Memakai Pakaian",
      "ayat":
          "رَبَّنَا تَقَبَّلْ مِنَّاۗ اِنَّكَ اَنْتَ السَّمِيْعُ الْعَلِيْمُ ",
      "latin": "rabbanâ taqabbal minnâ, innaka antas-samî‘ul-‘alîm",
      "arti":
          "Artinya: Ya Tuhan kami, terimalah (amal) dari kami. Sesungguhnya Engkaulah Yang Maha Mendengar lagi Maha Mengetahui. (Al-Baqarah - Ayat 127)",
      "img": ""
    },
    {
      "no": "2",
      "title": "Doa Melepaskan Pakaian",
      "ayat":
          "رَبَّنَآ ءَاتِنَا فِى ٱلدُّنْيَا حَسَنَةً وَفِى ٱلْءَاخِرَةِ حَسَنَةً وَقِنَا عَذَابَ ٱلنَّارِ",
      "latin":
          "rabbanā ātinā fid-dun-yā ḥasanataw wa fil-ākhirati ḥasanataw wa qinā 'ażāban-nār",
      "arti":
          "Artinya: Ya Tuhan kami, berilah kami kebaikan di dunia dan kebaikan di akhirat dan peliharalah kami dari siksa neraka (Al-Baqarah - Ayat 201)",
      "img": ""
    },
    {
      "no": "3",
      "title": "Doa Keluar Rumah",
      "ayat":
          "رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَآ اِصْرًا كَمَا حَمَلْتَهٗ عَلَى الَّذِيْنَ مِنْ قَبْلِنَاۚ رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهٖۚ وَاعْفُ عَنَّاۗ وَاغْفِرْ لَنَاۗ وَارْحَمْنَاۗ اَنْتَ مَوْلٰىنَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكٰفِرِيْنَࣖ",
      "latin":
          "rabbanâ wa lâ taḫmil ‘alainâ ishrang kamâ ḫamaltahû ‘alalladzîna ming qablinâ, rabbanâ wa lâ tuḫammilnâ mâ lâ thâqata lanâ bih, wa‘fu ‘annâ, waghfir lanâ, war-ḫamnâ, anta maulânâ fanshurnâ ‘alal-qaumil-kâfirîn",
      "arti":
          "Artinya: Wahai Tuhan kami, janganlah Engkau hukum kami jika kami lupa atau kami salah. Wahai Tuhan kami, janganlah Engkau bebani kami dengan beban yang berat sebagaimana Engkau bebankan kepada orang-orang sebelum kami. Wahai Tuhan kami, janganlah Engkau pikulkan kepada kami apa yang tidak sanggup kami memikulnya. Maafkanlah kami, ampunilah kami, dan rahmatilah kami. Engkaulah pelindung kami. Maka, tolonglah kami dalam menghadapi kaum kafir. (Al-Baqarah - Ayat 286)",
      "img": ""
    },
    {
      "no": "4",
      "title": "Doa Musafir Kepada Orang Yang Ditinggalkan",
      "ayat":
          "رَبَّنَا لَا تُزِغْ قُلُوْبَنَا بَعْدَ اِذْ هَدَيْتَنَا وَهَبْ لَنَا مِنْ لَّدُنْكَ رَحْمَةًۚ اِنَّكَ اَنْتَ الْوَهَّابُ",
      "latin":
          "rabbanâ lâ tuzigh qulûbanâ ba‘da idz hadaitanâ wa hab lanâ mil ladungka raḫmah, innaka antal-wahhâb",
      "arti":
          "Artinya: Wahai Tuhan kami, janganlah Engkau jadikan hati kami berpaling setelah Engkau berikan petunjuk kepada kami dan anugerahkanlah kepada kami rahmat dari hadirat-Mu. Sesungguhnya Engkau Maha Pemberi. (Ali 'Imran · Ayat 8)",
      "img": ""
    },
    {
      "no": "5",
      "title": "",
      "ayat":
          "رَبَّنَآ اِنَّنَآ اٰمَنَّا فَاغْفِرْ لَنَا ذُنُوْبَنَا وَقِنَا عَذَابَ النَّارِۚ",
      "latin":
          "rabbanâ innanâ âmannâ faghfir lanâ dzunûbanâ wa qinâ ‘adzâban-nâr",
      "arti":
          "Artinya: Wahai Tuhan kami, sesungguhnya kami benar-benar telah beriman. Maka, ampunilah dosa-dosa kami dan selamatkanlah kami dari azab neraka. (Ali 'Imran · Ayat 16)",
      "img": ""
    },
    {
      "no": "6",
      "title": "",
      "ayat":
          "رَبِّ هَبْ لِيْ مِنْ لَّدُنْكَ ذُرِّيَّةً طَيِّبَةًۚ اِنَّكَ سَمِيْعُ الدُّعَاۤءِ",
      "latin":
          "rabbi hab lî mil ladungka dzurriyyatan thayyibah, innaka samî‘ud-du‘â'",
      "arti":
          "Artinya: Wahai Tuhanku, karuniakanlah kepadaku keturunan yang baik dari sisi-Mu. Sesungguhnya Engkau Maha Mendengar doa.(Ali 'Imran · Ayat 38)",
      "img": ""
    },
    {
      "no": "7",
      "title": "",
      "ayat":
          "رَبَّنَآ اٰمَنَّا بِمَآ اَنْزَلْتَ وَاتَّبَعْنَا الرَّسُوْلَ فَاكْتُبْنَا مَعَ الشّٰهِدِيْنَ",
      "latin":
          "rabbanâ âmannâ bimâ anzalta wattaba‘nar-rasûla faktubnâ ma‘asy-syâhidîn",
      "arti":
          "Artinya: Wahai Tuhan kami, kami telah beriman pada apa yang Engkau turunkan dan kami telah mengikuti Rasul. Oleh karena itu, tetapkanlah kami bersama orang-orang yang memberikan kesaksian.",
      "img": ""
    },
    {
      "no": "8",
      "title": "",
      "ayat":
          "رَبَّنَا ظَلَمْنَآ اَنْفُسَنَا وَاِنْ لَّمْ تَغْفِرْ لَنَا وَتَرْحَمْنَا لَنَكُوْنَنَّ مِنَ الْخٰسِرِيْنَ",
      "latin":
          "rabbanâ dhalamnâ anfusana wa il lam taghfir lanâ wa tar-ḫamnâ lanakûnanna minal-khâsirîn",
      "arti":
          "Artinya: Ya Tuhan kami, kami telah menzalimi diri kami sendiri. Jika Engkau tidak mengampuni kami dan tidak merahmati kami, niscaya kami termasuk orang-orang yang rugi.",
      "img": ""
    },
    {
      "no": "9",
      "title": "",
      "ayat":
          "رَبَّنَآ اٰتِنَا مِنْ لَّدُنْكَ رَحْمَةً وَّهَيِّئْ لَنَا مِنْ اَمْرِنَا رَشَدًا",
      "latin":
          "rabbanâ âtinâ mil ladungka raḫmataw wa hayyi' lanâ min amrinâ rasyadâ",
      "arti":
          "Artinya: Ya Tuhan kami, anugerahkanlah kepada kami rahmat dari sisi-Mu dan mudahkanlah bagi kami petunjuk untuk segala urusan kami. (Al-Kahf · Ayat 10)",
      "img": ""
    },
    {
      "no": "10",
      "title": "",
      "ayat": "رَّبِّ ارْحَمْهُمَا كَمَا رَبَّيٰنِيْ صَغِيْرًاۗ",
      "latin": "rabbir-ḫam-humâ kamâ rabbayânî shaghîrâ",
      "arti":
          "Artinya: Wahai Tuhanku, sayangilah keduanya sebagaimana mereka berdua (menyayangiku ketika) mendidik aku pada waktu kecil.",
      "img": ""
    },
    {
      "no": "11",
      "title": "",
      "ayat":
          "قَالَ رَبِّ اشْرَحْ لِيْ صَدْرِيْۙ(25)وَيَسِّرْ لِيْٓ اَمْرِيْۙ(26)",
      "latin": "rabbisyraḫ lî shadrî wa yassir lî amrî",
      "arti":
          "Artinya: Wahai Tuhanku, lapangkanlah dadaku,mudahkanlah untukku urusanku,",
      "img": ""
    },
    {
      "no": "12",
      "title": "",
      "ayat": " رَّبِّ زِدْنِيْ عِلْمًا",
      "latin": "rabbi zidnî ‘ilmâ",
      "arti":
          "Artinya: Ya Tuhanku, tambahkanlah ilmu kepadaku. (Thaha · Ayat 114)",
      "img": ""
    },
  ];
}
