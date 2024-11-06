import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/customAppBar.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KeutamaanHajiScreen extends StatefulWidget {
  const KeutamaanHajiScreen({super.key});

  @override
  State<KeutamaanHajiScreen> createState() => _KeutamaanHajiScreenState();
}

class _KeutamaanHajiScreenState extends State<KeutamaanHajiScreen> {
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
        appBar: CustomAppbar(title: "Keutamaan Haji", height: 56),
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                      style: TextStyle(fontSize: sizeHeading),
                      "Haji merupakan Rukun Islam ke-5 sekaligus amalan wajib bagi muslim yang mampu. Banyak keutamaan yang terkandung dari ibadah haji. Keutamaan-keutamaan Haji diantaranya :"),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: keutamaanHaji.length,
                        itemBuilder: (BuildContext context, int index) {
                          return buildCondition(
                              context: context,
                              number: "${index + 1}",
                              title: keutamaanHaji[index]["title"],
                              ayat: keutamaanHaji[index]["ayat"],
                              artinya: keutamaanHaji[index]["arti"],
                              sizeTitle: sizeTitle,
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
    required String ayat,
    required String artinya,
    double sizeTitle = 16,
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
            Text(
              '$number.',
              style:
                  TextStyle(fontSize: sizeTitle, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: sizeTitle, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      '$ayat',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: sizeAyat),
                    ),
                    const SizedBox(height: 10.0),
                    Text('Artinya: $artinya',
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
      "no": "1",
      "title": "Penghapusan dosa bagi jamaah haji yang tidak berbuat maksiat.",
      "ayat":
          "عَنْ أَبِى هُرَيْرَةَ عَنِ النَّبِىِّ -صلى الله عليه وسلم- قَالَ مَنْ حَجَّ فَلَمْ يَرْفُثْ وَلَمْ يَفْسُقْ رَجَعَ مِنْ ذُنُوْبِهِ كَيَوْمَ وَلَدَتْهُ أُمُّهُ",
      "arti":
          "Dari sahabat Abu Hurairah ra, dari Nabi Muhammad saw, ia bersabda, ‘Siapa saja yang berhaji, lalu tidak berkata keji dan tidak berbuat dosa, niscaya ia pulang (suci) seperti hari dilahirkan oleh ibunya (HR Bukhari, Muslim, An-Nasai, At-Tirmidzi, dan Ibnu Majah)."
    },
    {
      "no": "2",
      "title": "Surga bagi jamaah haji yang mabrur.",
      "ayat":
          " عَنْ أَبِى هُرَيْرَةَ رَضِىَ اللَّهُ عَنْهُ قَالَ قَالَ رَسُولُ اللَّهِ -صلى الله عليه وسلم- الْعُمْرَةُ إِلَى الْعُمْرَةِ كَفَّارَاتٌ لِمَا بَيْنَهُمَا، وَالْحَجُّ الْمَبْرُورُ لَيْسَ لَهُ جَزَاءٌ إِلاَّ لْجَنَّةُ",
      "arti":
          "Dari sahabat Abu Hurairah ra, dari Nabi Muhammad saw, ia bersabda, Umrah ke umrah merupakan kafarah (dosa) di antara keduanya. Sedangkan haji mabrur tiada balasan baginya kecuali surga (HR Malik, Bukhari, Muslim, At-Tirmidzi, An-Nasai, Ibnu Majah, Al-Asbihani)."
    },
    {
      "no": "3",
      "title": "Pemberian syafaat pada 400 anggota keluarganya.",
      "ayat":
          "عَنْ أَبِي مُوسَى الأَشْعَرِيِّ، رَفَعَهُ إِلَى رَسُولِ اللهِ صلى الله عليه وسلم، قَالَ الْحَاجُّ يَشْفَعُ فِي أَرْبَعِ مِائَةِ أَهْلِ بَيْتٍ، أَوْ قَالَ مِنْ أَهْلِ بَيْتِهِ، وَيَخْرُجُ مِنْ ذُنُوبِهِ كَيَوْمَ وَلَدَتْهُ أُمُّهُ",
      "arti":
          "Dari sahabat Abu Musa Al-Asy’ari ra dengan marfu dari Rasulullah saw, Orang yang berhaji dapat memberikan syafaat kepada 400 orang keluarga atau keluarganya dan  ia akan keluar dari dosanya seperti hari ia dilahirkan oleh ibunya (HR Al-Bazzar)."
    },
    {
      "no": "3",
      "title":
          "Catatan pahala dan penghapusan dosa serta pengangkatan derajat pada setiap jejak kendaraan jamaah haji.",
      "ayat":
          "عَنِ ابْنِ عُمَرَ، قَالَ سَمِعْتُ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ مَا يَرْفَعُ إِبِلُ الْحَاجِّ رِجْلًا وَلَا يَضَعُ يَدًا إِلَّا كَتَبَ اللهُ لَهُ بِهَا حَسَنَةً، أَوْ مَحَى عَنْهُ سَيِّئَةً، أَوْ رَفَعَهُ بِهَا دَرَ جَةً",
      "arti":
          "Dari sahabat Ibnu Umar ra, ia mendengar Nabi Muhammad saw bersabda, Tidaklah unta yang dikendarai jamaah haji menaikkan kaki belakang dan menurunkan kaki depannya melainkan Allah mencatatnya sebagai kebaikan, sebagai penghapusan dosa, atau sebagai pengangkatan satu derajat baginya.(HR Al-Baihaqi)."
    },
    {
      "no": "3",
      "title": "Mereka adalah tamu Allah yang doanya mustajab.",
      "ayat":
          "عن جابر رَضِىَ اللَّهُ عَنْهُ قَالَ قَالَ رَسُولُ اللَّهِ الْحُجَّاجُ وَالْعُمَّارُ وَفْدُ اللهِ عَزَّ وَجَلَّ، دَعَاهُمْ فَأَجَابُوْهُ وَسَأَلُوْهُ فَأَعْطَا هُمْ",
      "arti":
          "Dari sahabat Jabir ra, Nabi Muhammad saw bersabda, Jamaah haji dan umrah adalah tamu Allah. Allah memanggil mereka, lalu mereka memenuhi panggilan-Nya dan mereka meminta kepada-Nya, lalu Allah memberikan permintaan mereka (HR Al-Bazzar)."
    },
    {
      "no": "3",
      "title": "Terbukanya pengampunan dosa.",
      "ayat":
          "عَن أَبِي هُرَيْرَةَ عَن رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَنَّهُ قَالَ الْحُجَّاجُ وَالْعُمَّارُ وَفْدُ اللَّهِ إِنْ دَعَوْهُ أَجَابَهُمْ وَإِنْ اسْتَغْفَرُوهُ غَفَرَ",
      "arti":
          "Dari sahabat Abu Hurairah ra, Nabi Muhammad saw bersabda, Jamaah haji dan umrah adalah tamu Allah. Jika mereka berdoa, Allah memenuhi permintaan mereka dan jika mereka meminta ampun kepada-Nya, niscaya Allah mengampuni mereka (HR Ibnu Majah dan Ibnu Hibban). "
    },
    {
      "no": "3",
      "title":
          "Garansi ampunan bagi orang yang dimintakan ampun oleh jamaah haji.",
      "ayat":
          "عَنْ أَبِى هُرَيْرَةَ قَالَ قَالَ رَسُولُ اللَّهِ -صلى الله عليه وسلم- اللَّهُمَّ اغْفِرْ لِلْحَاجِّ وَلِمَنِ اسْتَغْفَرَ لَهُ الْحَاجُّ",
      "arti":
          "Dari sahabat Abu Hurairah ra, Nabi Muhammad saw pernah berdoa, Ya Allah, ampunilah jamaah haji dan orang yang dimintakan ampun oleh jamaah tersebut (HR Al-Hakim)."
    },
    {
      "no": "3",
      "title": "Jaminan kesehatan lahir dan batin di dunia.",
      "ayat":
          "عن أبي ذر أَنَّ النَّبِيَّ صَلَّى الله عليه وسلم قال إِنَّ دَاوُدَ النَّبِيَّ عليه السلام قال إِلَهِيْ مَا لِعِبَادِكَ عَلَيْكَ إِذَا هُمْ زَارُوْكَ فِي بَيْتِكَ قال إِنَّ لِكُلِّ زَائِرٍ عَلَى المَزُوْرِ حَقًّا يَا دَاوُدُ إِنَّ لَهُمْ عَلَيَّ أَنْ أُعَافِيَهُمْ فِي الدُّنْيَا وَأَغْفِرَ لَهُمْ إِذَ الَقِيْتُهُمْ",
      "arti":
          "Dari sahabat Abu Zarr ra, Nabi Muhammad saw bercerita, Nabi Dawud as pernah berdoa: Tuhanku, apa yang didapat hamba-Mu bila mereka mengunjungi-Mu pada rumah-Mu? Allah menjawab, Setiap pengunjung memiliki hak atas yang dikunjungi. Wahai Dawud, sungguh mereka berhak mendapatkan kesembuhan di dunia dan ampunan dari-Ku ketika kelak Kujumpai mereka (di akhirat). (HR At-Thabarani)."
    },
    {
      "no": "3",
      "title": "Jaminan bebas hisab",
      "ayat":
          "وَعَنْ عَائِشَةَ رَضِيَ الله عَنْهَا قَالَتْ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مَنْ خَرَجَ مِنْ هَذَا الْوَجْهِ بِحَجٍّ، أَوْ بِعُمْرَةٍ فَمَاتَ فِيهِ، لَمْ يُعْرَضْ وَلَمْ يُحَاسَبْ، وَقِيلَ لَهُ ادْخُلِ الْجَنَّةَ, قَالَتْ وَقَالَ رَسُولُ اللهِ صلى الله عليه وسلم إِنَّ اللَّهَ يُبَاهِيبِا لطَّا ئِفِينَ",
      "arti":
          "Dari sayyidah Aisyah ra, Nabi Muhammad saw bersabda, Siapa saja yang keluar berhaji atau umrah melalui jalan ini, lalu meninggal di dalamnya, niscaya ia tidak ditampakkan dan tidak dihisab, lalu dikatakan kepadanya: Masuklah kamu ke surga. Aisyah ra berkata, Rasulullah saw bersabda: Sungguh Allah bangga terhadap orang-orang yang thawaf (HR At-Thabarani, Abu Ya’la, Ad-Daruquthni, dan Al-Baihaqi)."
    },
    {
      "no": "3",
      "title": "Jaminan Allah berupa pahala",
      "ayat":
          "عن جابر أَنَّ النَبِيَّ صلى الله عليه وسلم قال إِنَّ هَذَا البَيْتَ دِعَامَةٌ مِنْ دَعَائِمِ الإِسْلَامِ فَمَنْ حَجَّ البَيْتَ أَوْ اعْتَمَرَ فَهُوَ ضَامِنٌ عَلَى اللهِ فَإِنْ مَاتَ أَدْخَلَهُ الجَنَّةَ وَإِنْ رَدَّهُ إِلَى أَهْلِهِ رَدَّهُ بِأَجْرٍ وَ غَنِيْمَةٍ",
      "arti":
          "Nabi Muhammad saw bersabda, Sungguh Ka’bah ini merupakan salah satu tiang Islam. Siapa saja yang berhaji mengunjungi Ka‘bah atau berumrah, maka ia menjadi tanggungan Allah. Jika ia meninggal, maka Allah memasukkannya ke surga. Jika Allah mengembalikannya kepada keluarganya, niscaya Allah memulangkannya dengan pahala dan ghanimah (HR At-Thabarani). "
    },
    {
      "no": "3",
      "title": "Jamaah haji yang meninggal dibangkitkan dengan talbiyah",
      "ayat":
          "عَنِ ابْنِ عَبَّاسٍ قَالَ بَيْنَا رَجُلٌ وَاقِفٌ مَعَ رَسُولِ اللَّهِ -صلى الله عليه وسلم- بِعَرَفَةَ فَوَقَعَ عَنْ رَاحِلَتِهِ فَأَوْقَصَتْهُ أَوْ وَقَصَتْهُ فَمَاتَ فَقَالَ رَسُولُ اللَّهِ -صلى الله عليه وسلم- اغْسِلُوهُ بِمَاءٍ وَسِدْرٍ وَكَفِّنُوهُ فِى ثَوْبَيْنِ وَلاَ تُحَنِّطُوهُ وَلاَ تُخَمِّرُوا رَأْسَهُ فَإِنَّ اللَّهَ يَبْعَثُهُ يَوْمَ الْقِيَامَةِ مُلَبِّيًا",
      "arti":
          "Dari sahabat Ibnu Abbas ra, ia bercerita, ketika sedang (wukuf) bersama Rasulullah di Arafah, seseorang tiba-tiba terjatuh dari kendaraannya, lalu membuat lehernya patah, kemudian meninggal dunia. Rasulullah saw mengatakan, Mandikanlah ia dengan air dan daun bidara, kafankanlah pada dua lapis. Jangan berikan obat pengawet dan jangan tutup kepalanya karena Allah akan membangkitkannya pada hari kiamat dalam keadaan bertalbiyah (HR Bukhari, Muslim, dan Ibnu Khuzaimah). "
    },
  ];
}
