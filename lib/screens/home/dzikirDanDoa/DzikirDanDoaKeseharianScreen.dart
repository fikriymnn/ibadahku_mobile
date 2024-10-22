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
          /* actions: [
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
          ], */
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
      "title": "Doa Musafir Kepada Orang Yang Ditinggalkan",
      "ayat": "أَسْتَوْدِعُكُمُ اللَّهَ الَّذِيْ لاَ تَضِيْعُ وَدَائِعُهُ",
      "latin": "Astaudi’ukumullaahal-ladzii laa tadhii’u wa daa-i’uh.",
      "arti":
          "Artinya: Aku menitipkan kamu kepada Allah yang tidak akan hilang titipan-Nya.",
      "img": ""
    },
    {
      "no": "5",
      "title": "Do’a Orang Mukim Kepada Musafir",
      "ayat":
          "زَوَّدَكَ اللَّهُ التَّقْوَى، وَغَفَرَ ذَنْبَكَ، وَيَسَّرَ لَكَ الْخَيْرَ حَيْثُ مَا كُنْتَ",
      "latin":
          "Zawwadakallaahut-taqwaa, wa ghofara dzanbaka, wa yassaro lakal khoiro haitsu maa kunta.",
      "arti":
          "Artinya: Semoga Allah memberi bekal taqwa kepadamu, mengampuni dosamu dan memudahkan kebaikan kepadamu di mana saja kamu berada.",
      "img": ""
    },
    {
      "no": "6",
      "title": "Doa Naik Kendaraan",
      "ayat":
          "سُبْحَانَ الَّذِىْ سَخَّرَلَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِيْنَ وَاِنَّآ اِلَى رَبّنَا لَمُنْقَلِبُوْن",
      "latin":
          "Subhaanalladzi sakhoro lana hadza wa ma kunna lahu muqrinin, wa innaa ilaa robbina lamunqolibuun.",
      "arti":
          "Artinya: Maha suci Allah yang memudahkan ini (kendaraan) bagi kami dan tiada kami mempersekutukan bagi-Nya, dan sesungguhnya kami akan kembali kepada Tuhan kami.",
      "img": ""
    },
    {
      "no": "7",
      "title": "Doa Berpergian",
      "ayat":
          "للهُ أَكْبَر، اللهُ أكْبر، الله أكْبَر، سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا، وَمَا كُنَّا لَهُ مُقْرِنِينَ، وَإِنَّا إِلَى رَبِّنَا لَمُنْقَلِبُونَ، اللهُمَّ إِنَّا نَسْأَلُكَ فِي سَفَرِنَا هَذَا الْبِرَّ وَالتَّقْوَى، وَمِنَ الْعَمَلِ مَا تَرْضَى، اللهُمَّ هَوِّنْ عَلَيْنَا سَفَرَنَا هَذَا، وَاطْوِ عَنَّا بُعْدَهُ، اللهُمَّ أَنْتَ الصَّاحِبُ فِي السَّفَرِ، وَالْخَلِيفَةُ فِي الْأَهْلِ، اللهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ وَعْثَاءِ السَّفَرِ، وَكَآبَةِ الْمَنْظَرِ، وَسُوءِ الْمُنْقَلَبِ فِي الْمَالِ وَالْأَهْلِ",
      "latin":
          "Allahu Akbar, Allahu Akbar, Allahu Akbar. Subhanalladzi sakkhoro lana hadza wa maa kunnaa lahu muqrinin, wa innaa ilaa robbinaa lamunqolibun, allahumma inna nas’aluka fii safarinaa hadzal birro wat taqwa wa minal ‘amal maa tardho, allahumma hawwin ‘alaina safarona hadza wa athwi ‘annaa bu’dahu, allahumma antas shohibu fis safari wal kholifatu fil ahli, allahumma inni a’udzubika min wa’tsaais safari wa kaabatil mandzhori wa suuil munqolibi fil maali wal ahli.",
      "arti":
          "Artinya: Allah Maha Besar, Allah Maha Besar, Allah Maha Besar. Maha suci Allah yang telah menundukkan (pesawat) ini bagi kami, padahal sebelumnya kami tidak mampu menguasainya, dan sesungguhnya kepada Allah lah kami kembali. Ya Allah, sesungguhnya kami memohon kebaikan dan takwa dalam perjalanan ini, kami mohon perbuatan yang Engkau ridhai.Ya Allah, permudahkanlah perjalanan kami ini, dan dekatkanlah jaraknya bagi kami. Ya Allah, Engkaulah pendampingku dalam bepergian dan mengurusi keluarga. Ya Allah, aku berlindung kepada-Mu dari kelelahan dalam bepergian, pemandangan yang menyedihkan dan kepulangan yang buruk dalam harta dan keluarga.",
      "img": ""
    },
    {
      "no": "8",
      "title": "Doa Musafir Menjelang Subuh",
      "ayat":
          "سَمَّعَ سَامِعٌ بِحَمْدِ اللَّهِ، وَحُسْنِ بَلاَئِهِ عَلَيْنَا. رَبَّنَا صَاحِبْنَا، وَأَفْضِلْ عَلَيْنَا عَائِذًا بِاللَّهِ مِنَ النَّارِ",
      "latin":
          "Samma'a saami'un bihamdillaah, wa husni balaa-ihi 'alainaa. robbanaa shoohibnaa, wa afdhil 'alainaa 'aa-idzan billaahi minan-naar.",
      "arti":
          "Artinya: Semoga ada yang memperdengarkan puji kami kepada Allah (atas nikmat) dan cobaanNya yang baik bagi kami. Wahai Tuhan kami, temanilah kami (peliharalah kami) dan berilah karunia kepada kami dengan berlindung kepada Allah dari api Neraka.",
      "img": ""
    },
    {
      "no": "9",
      "title": "Doa Singgah di Suatu Tempat",
      "ayat":
          "مَنْ نَزَلَ مَنْزِلاً ثُمَّ قَالَ أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ. لَمْ يَضُرُّهُ شَىْءٌ حَتَّى يَرْتَحِلَ مِنْ مَنْزِلِهِ ذَلِكَ",
      "latin": "Ya’udzu bi kalimaatillahit taammaati min syarri maa kholaq",
      "arti":
          "Artinya: Aku berlindung dengan kalimat-kalimat Allah yang sempurna dari kejahatan makhluk yang diciptakanNya",
      "img": ""
    },
    {
      "no": "10",
      "title": "Doa Masuk Kota Atau Desa",
      "ayat":
          "اَللَّهُمَّ رَبَّ السَّمَاوَاتِ السَّبْعِ وَمَا أَظْلَلْنَ، وَرَبَّ اْلأَرَضِيْنَ السَّبْعِ وَمَا أَقْلَلْنَ، وَرَبَّ الشَّيَاطِيْنَ وَمَا أَضْلَلْنَ، وَرَبَّ الرِّيَاحِ وَمَا ذَرَيْنَ. أَسْأَلُكَ خَيْرَ هَذِهِ الْقَرْيَةِ وَخَيْرَ أَهْلِهَا، وَخَيْرَ مَا فِيْهَا، وَأَعُوْذُ بِكَ مِنْ شَرِّهَا وَشَرِّ أَهْلِهَا وَشَرِّ مَا فِيْهَا.",
      "latin":
          "Alloohumma robbas samaawaatis sab’i wamaa azhlalna, wa robbal arodhiinas sab’i wamaa aqlalna, warobbasy-syayaatiina wamaa adhlalna, warobbar riyaaha wamaa dzaroina. As-aluka khoiro haadziihil qoryati wa khoiro ahlihaa, wa khoiro maa fiihaa, wa a’uudzubika min syarriha wa syarri ahlihaa wa syarri maa fiihaa.",
      "arti":
          "Artinya: Ya Allah, Tuhan tujuh langit dan apa yang dinaunginya, Tuhan penguasa tujuh bumi dan apa yang di atasnya, Tuhan yang menguasai setan-setan dan apa yang mereka sesatkan, Tuhan yang menguasai angin dan apa yang diter-bangkannya. Aku mohon kepadaMu kebaikan desa ini, kebaikan penduduk-nya dan apa yang ada di dalamnya. Aku berlindung kepadaMu dari kejelekan desa ini, kejelekan penduduknya dan apa yang ada di dalamnya.",
      "img": ""
    },
    {
      "no": "11",
      "title": "Doa Masuk Pusat Keramaian",
      "ayat":
          "لاَ اَ إِلَهَ إِلاَّ اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ المُلْكُ وَلَهُ الْحَمْدُ يُحْيِيْ وَيُمِيْتُ وَهُوَ حَيٌّ لاَ يَمُوْتُ، بِيَدِه الْخَيْرُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْر.",
      "latin":
          "Laa ilaaha illallaahu wahdahu laa syarikalah, lahul mulku walahul hamdu yuhyi wa yumitu, wahuwa hayyun laa yamuutu, biyadihil khairu, wahuwa alaa kulli syai-in qadiir.",
      "arti":
          "Artinya: Tidak ada Tuhan yang disembah selain Allah, tidak ada sekutu bagi-Nya. Bagi-Nya kerajaan, bagiMu segala pujian. Dialah yang menghidupkan dan yang mematikan. Dialah yang hidup, tidak akan mati. Di tangan-Nya seluruh kebaikan. Dialah yang maha kuasa atas segala sesuatu.",
      "img": ""
    },
    {
      "no": "12",
      "title": "Doa Pulang Berpergian",
      "ayat":
          "اَللَّهُ أَكْبَرُ، اَللَّهُ أَكْبَرُ، اَللَّهُ أَكْبَرُ. لاَ إِلَـٰهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيْرٌ. آيِبُوْنَ تَائِبُوْنَ عَابِدُوْنَ لِرَبِّنَا حَامِدُوْنَ، صَدَقَ اللَّهُ وَعْدَهُ وَنَصَرَ عَبْدَهُ وَهَزَمَ اْلأَحْزَابَ وَحْدَهُ",
      "latin":
          "Allaahu akbar (3x). Laa ilaaha illallaah, wahdahu laa syariika lah, lahul mulku wa lahul hamdu, wa huwa ‘alaa kulli syai-in qodiir. Aayibuuna taa-ibuuna ‘aabiduuna lirobbinaa haamiduun, shodaqollaahu wa’dah, wa nashoro ‘abdah, wa hazamal ahzaaba wahdah.",
      "arti":
          "Artinya: Allah Maha Besar (3x). Tidak ada sesembahan yang berhak disembah kecuali Allah, Yang Maha Esa, tiada sekutu bagiNya. Bagi-Nya kerajaan dan pujaan. Dia-lah Yang Mahakuasa atas segala sesuatu. Kami kembali dengan bertaubat, beribadah dan memuji kepada Tuhan kami. Allah telah menepati janjiNya, membela hambaNya (Muhammad) dan mengalahkan golongan musuh dengan sendirian.",
      "img": ""
    },
    {
      "no": "14",
      "title": "Doa Masuk Mesjid",
      "ayat":
          "أَعُوذُ بِاللَّهِ الْعَظِيْمِ وَبِوَجْهِهِ الْكَرِيمِ وَسُلْطَانِهِ الْقَدِيمِ مِنَ الشَّيْطَانِ الرَّحِيمِ، اَلْحَمْدُ لِلَّهِ ، اللَّهُمَّ صَلِّ وَسَلَّمْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ ؛ اللَّهُمَّ اغْفِرْ لِي ذُنُوبِي وَافْتَحْ لِي أَبْوَابَ رَحْمَتِكَ",
      "latin":
          "A’uudzu billaahil ‘adzhiimi wa biwajhihil kariimi wa sulthaanihil qadiimi minasy syaithaanir rajiim, alhamdulillah, allahumma shalli wa sallim ‘ala muhaammadin wa ‘ala aali muhammadin, allahummaghfir lii dzunuubii waftah lii abwaaba rahmatik.",
      "arti":
          "Artinya: Aku berlindung kepada Allah Yang Maha Agung, kepada Zat-Nya Yang Maha Mulia dan kepada kekuasaan-Nya Yang Maha Dahulu dari setan yang terkutuk. Segala puji bagi Allah. Ya Allah, limpahkanlah sholawat dan salam kepada Nabi Muhammad dan keluarganya. Ya Allah, ampunilah dosa-dosaku dan bukakanlah untukku semua pintu rahmat-Mu.",
      "img": ""
    },
    {
      "no": "13",
      "title": "Doa Keluar Masjid",
      "ayat":
          "أعُوْذُ بِاللهِ العَظِيْمِ وَبِوَجْهِهِ الْكَرِيْمِ وَسُلْطَانِهِ الْقَدِيْمِ مِنَ الشَّيْطَانِ الرَّجِيْمِ. بِسْمِ اللهِ وَالْحَمْدُ لِلهِ. أَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِ سَيِّدِنَا مُحَمَّدٍ. اَللَّهُمَّ اغْفِرْ لِي ذُنُوْبِي وَافْتَحْ لِي أَبْوَابَ فَضْلِكَ",
      "latin":
          "A’ûdzu billâhil ‘azhîm wa biwajhihil karîm wa sulthânihil qadîm minas syaithânir rajîm. Bismillâhi wal hamdulillâh. Allâhumma shalli wa sallim ‘alâ sayyidinâ muhammadin wa ‘alâ âli sayyidinâ muhammadin. Allâhummaghfirlî dzunûbî waftahlî abwâba fadhlik.",
      "arti":
          "Artinya: Aku berlindung kepada Allah Yang Maha Besar, kepada Dzat-Nya Yang Maha Mulia, dan kepada kerajaan-Nya Yang Sedia dari setan yang terlontar. Dengan nama Allah dan segala puji bagi Allah. Hai Tuhanku, berilah shalawat dan sejahtera atas Sayyidina Muhammad dan atas keluarga Sayyidina Muhammad. Hai Tuhanku, ampuni untukku segala dosaku. Bukakan lah bagiku segala pintu kemurahan-Mu",
      "img": ""
    },
  ];
}
