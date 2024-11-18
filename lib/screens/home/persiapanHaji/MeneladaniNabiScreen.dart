import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

import '../../../widgets/customAppBar.dart';

class MeneladaniNabiScreen extends StatefulWidget {
  const MeneladaniNabiScreen({super.key});

  @override
  State<MeneladaniNabiScreen> createState() => _MeneladaniNabiScreenState();
}

class _MeneladaniNabiScreenState extends State<MeneladaniNabiScreen> {
  double sizeHeading = 17;
  double sizeTitle = 16;
  double sizeAyat = 16;
  double sizeArti = 14;

  final double maxHeading = 27;
  final double maxTitle = 26;
  final double maxAyat = 26;
  final double maxArti = 24;

  final double minHeading = 13;
  final double minTitle = 12;
  final double minAyat = 12;
  final double minArti = 10;

  void _uppSize() {
    setState(() {
      if (sizeTitle < maxTitle) sizeTitle++;
      if (sizeAyat < maxAyat) sizeAyat++;
      if (sizeArti < maxArti) sizeArti++;
      if (sizeHeading < maxHeading) sizeHeading++;
    });
  }

  void _downSize() {
    setState(() {
      if (sizeTitle > minTitle) sizeTitle--;
      if (sizeAyat > minAyat) sizeAyat--;
      if (sizeArti > minArti) sizeArti--;
      if (sizeHeading > minHeading) sizeHeading--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(title: "Meneladani Nabi", height: 56),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Text(
                  //     style: TextStyle(fontSize: sizeHeading),
                  //     "Haji merupakan Rukun Islam ke-5 sekaligus amalan wajib bagi muslim yang mampu. Banyak keutamaan yang terkandung dari ibadah haji. Keutamaan-keutamaan Haji diantaranya :"),
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
                              number: "${index + 1}",
                              Penjelasan: keutamaanHaji[index]["penjelasan"],
                              ayat: keutamaanHaji[index]["ayat"],
                              artinya: keutamaanHaji[index]["arti"],
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
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      height: 20,
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
      "penjelasan":
          "Syarat kedua diterimanya suatu amal sholih adalah mencontohi Nabi shallallahu áliahi wasalllam. Jika dalam ibadah yang lain saja kita harus mencontohi Nabi apalagi dalam ibadah haji yang banyak ritual dalam ibadah haji yang kurang bisa kita cerna dengan baik hikmah dibalik ritual tersebut. Sebagai contoh, kenapa harus thowaf di ka’bah?, kenapa tidak ditempat yang lainnya?, kenapa juga harus dalam bentuk thowaf berputar-putar?, kenapa harus mencium hajar aswad?, kenapa harus 7 putaran, kenapa harus melempar jamroh, kenapa harus 7 batu kerikil?, kenapa harus kerikil kecil?, kenapa lelaki tatkala ihrom tidak boleh menutup kepala?, kenapa wanita tidak boleh bercadar dan memakai kaus tangan tatkala ihrom?, dan masih banyak hal-hal lain yang kita tidak bisa mencerna dengan baik hikmah dibaliknya.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Tatkala Umar bin al-Khottoob mencium hajar aswad beliau berkata kepada hajar aswad:",
      "ayat":
          "أَمَا وَاللَّهِ، إِنِّي لَأَعْلَمُ أَنَّكَ حَجَرٌ لاَ تَضُرُّ وَلاَ تَنْفَعُ، وَلَوْلاَ أَنِّي رَأَيْتُ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ اسْتَلَمَكَ مَا اسْتَلَمْتُكَ",
      "arti":
          "Artinya: Ketahuilah, demi Allah, sesungguhnya aku benar-benar tahu bahwasanya engkau hanyalah batu, engkau tidak memberi mudhorot dan juga manfaat. Dan kalau bukan karena aku melihat Nabi shallallahu álaihi wasallam mengusapmu maka aku tidak akan mengusapmu”(HR Al-Bukhari no 1605 dan Muslim no 1270)"
    },
    {
      "penjelasan": "Dalam riwayat yang lain :",
      "ayat":
          "وَلَوْلاَ أَنِّي رَأَيْتُ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يُقَبِّلُكَ مَا قَبَّلْتُكَ",
      "arti":
          "Artinya: Kalau bukan karena aku telah melihat Nabi shallallahu álaihi wasallam menciummu maka aku tidak akan menciummu”(HR Al-Bukhari no 1579)"
    },
    {
      "penjelasan": "Ibnu Hajar berkata :",
      "ayat":
          "وَفِي قَوْلِ عُمَرَ هَذَا التَّسْلِيمُ لِلشَّارِعِ فِي أُمُورِ الدِّينِ وَحُسْنُ الِاتِّبَاعِ فِيمَا لَمْ يَكْشِفْ عَنْ مَعَانِيهَا وَهُوَ قَاعِدَةٌ عَظِيمَةٌ فِي اتِّبَاعِ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فِيمَا يَفْعَلُهُ وَلَوْ لَمْ يَعْلَمِ الْحِكْمَةَ فِيهِ",
      "arti":
          "Artinya: Pada perkataan Umar tersebut menunjukan pemasrahan/penerimaan secara sempurna terhadap syari’at para perkara-perkara agama, dan sikap yang baik dalam meneladani Nabi pada perkara-perkara yang tidak diketahui maknanya. Dan ini adalah kaidah yang agung dalam meneladani Nabi shallallahu ‘alaih wasallam pada perkara-perakara yang dilakukan oleh Nabi meskipun tidak diketahui apa hikmahnya” (Fathul Baari 3/463)"
    },
    {
      "penjelasan":
          "Oleh karena itu, saat Mu’āwiyah radhiyallāhu Ta’āla ‘anhu thawaf, beliau menyentuh 4 rukun seluruhnya. Perbuatan beliau ditegur oleh Ibnu ‘Abbas radhiyallāhu Ta’āla ‘anhumā.",
      "ayat":
          "وَكَانَ مُعَاوِيَةُ يَسْتَلِمُ الأَرْكَانَ، فَقَالَ لَهُ ابْنُ عَبَّاسٍ رَضِيَ اللَّهُ عَنْهُمَا: إِنَّهُ لاَ يُسْتَلَمُ هَذَانِ الرُّكْنَانِ، فَقَالَ: «لَيْسَ شَيْءٌ مِنَ البَيْتِ مَهْجُورًا",
      "arti":
          "Artinya: Dulu Mu’awiyah mengusap seluruh rukun (sudut), maka Ibnu ‘Abbas radhiallahu ‘anhuma menegurnya, “Sesungguhnya tidak ada yang disentuh kecuali dua sudut.” Mu’awiyah berkata, “Tidak ada sesuatu pun dari bagian Ka’bah yang ditinggalkan.” (HR Al-Bukhari no. 1608)"
    },
    {
      "penjelasan": "Dalam riwayat Ahmad,",
      "ayat":
          "فَقَالَ ابْنُ عَبَّاسٍ: {لَقَدْ كَانَ لَكُمْ فِي رَسُولِ اللهِ أُسْوَةٌ حَسَنَةٌ}، فَقَالَ مُعَاوِيَةُ: صَدَقْتَ",
      "arti":
          "Maka Ibnu Ábbas berkata, “Sungguh bagi kalian ada teladan yang baik pada Rasulullah”. Maka Mu’awiyah berkata  صدقتَ “Engkau benar (wahai Ibnu ‘Abbas).” (HR Ahmad no. 1877 dengan sanad yang shahih, lihat Fathul Baari 3/474)"
    },
    {
      "penjelasan":
          "Akhirnya Mu’āwiyah hanya mengusap 2 bagian saja yaitu Rukun Yamani dan Rukun Hajar Aswad karena dua rukun yang lain (yaitu dua rukun syaamiyain) tidaklah asli. Imam Asy-Syafi’i berkata :",
      "ayat":
          "بِأَنَّا لَمْ نَدَّعِ اسْتِلَامَهُمَا هَجْرًا للبيت وَكَيْفَ يَهْجُرُهُ وَهُوَ يَطُوفُ بِهِ وَلَكِنَّا نَتَّبِعُ السُّنَّةَ فِعْلًا أَوْ تَرْكًا وَلَوْ كَانَ تَرْكُ استلامهما هجرا لَهما لَكَانَ تَرْكُ اسْتِلَامِ مَا بَيْنَ الْأَرْكَانِ هَجْرًا لَهَا وَلَا قَائِلَ بِهِ",
      "arti":
          "Sesungguhnya kami tidaklah mengusap kedua rukun (syaamiyain) bukan karena meninggalkan Ka’bah. Bagaimana seseorang dikatakan meninggalkan ka’bah sementara ia sedang thawaf mengelilingi ka’bah. Akan tetapi kami hanyalah mengikuti Sunnah, baik yang dikerjakan maupun yang ditinggalkan (dan sunnahnya adalah meninggalkan mengusap dua rukun yang lain-pen). Seandainya tidak mengusap dua rukun syaamiyain adalah bentuk meninggalkan kedua rukun, maka tidak mengusap seluruh dinding ka’bah yang ada diantara rukun-rukun tersebut juga merupakan bentuk meninggalkannya, dan tidak ada seorangpun yang menyatakan demikian.” (Fathul Baari 3/474-475)"
    },
    {
      "penjelasan":
          "Jumhūr ulamā berpendapat bahwasanya kewajiban haji itu harus segera, berbeda dengan pendapat ulamā Syāfi’iyah yang mengatakan عَلَى التَّرَاخِي (bisa ditunda) tidak mengapa.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Pendapat yang kuat adalah pendapat jumhūr ulamā bahwasanya kewajiban haji itu harus segera dilakukan. Artinya jika seseorang mampu untuk berhaji telah memiliki kemampuan fisiknya kuat dan uangnya juga ada.Maka hendaknya dia segera melaksanakan ibadah haji dan dia tidak menunda-nundanya. Karena dia tidak tahu apa yang akan dia hadapi dikemudian hari -sebagaimana telah disebutkan dalam hadits di atas-.",
      "ayat": "",
      "arti": ""
    },
    {
      "penjelasan":
          "Lagi pula secara logis bahwasanya namanya perintah harusnya segera kita laksanakan. Oleh karenanya, Allāh Subhānahu wa Ta’āla memberi hukuman kepada Iblīs tatkala disuruh sujud kepada Ādam dia menolak. Kenapa ?, Karena dia harus segera bersujud kepada Ādam. Tatkala dia menolak untuk segera sujud kepada Adam, maka Allāh tidak memberi kesempatan bagi dia (Iblīs) untuk sujud di lain waktu, maka Allāh menghukum Iblīs yang menolak untuk bersujud kepada Ādam tatkala itu.",
      "ayat": "",
      "arti": ""
    },
  ];
}
