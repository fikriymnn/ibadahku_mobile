import 'package:flutter/material.dart';

class CaraThowaf extends StatelessWidget {
  const CaraThowaf({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bacaan Doa Thowaf Putaran Satu sampai Tujuh",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                  "Thowaf dimulai dari sudut Hajar Aswad dengan mencium atau melambaikan tangan jika tidak dapat menyentuhnya. Pada awal setiap putaran, bacalah:"),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.right,
                  "بِسْمِ اللهِ وَاللهُ أَكْبَر",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Bacalah sebanyak tiga kali. Setelah itu, lakukanlah tawaf sebanyak tujuh putaran sambil memastikan bahwa Ka'bah selalu berada di sisi kiri. Berikut adalah bacaan doa tawaf untuk setiap putaran yang dibaca mulai dari Hajar Aswad hingga Rukun Yamani."),
              SizedBox(
                height: 25,
              ),
              Text(
                "1. Doa Thowaf Putaran 1",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                    "Pada putaran pertama, bacaan doa yang dianjurkan adalah:"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.right,
                    "سُبْحَانَ اللهِ وَالْحَمْدُللهِ وَلآ إِلٰهَ اِلَّااللهُ وَاللهُ اَكْبَرُ وَلَاحَوْلَ وَلَا قُوَّةَ إِلاَّ بِالله الْعَلِيِّ الْعَظِيْمِ. وَالصَّلَاةُ وَالسَّلَامُ عَلٰى رَسُولِ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَاَللّٰهُمَّ إِيْمَانًا بِكَ وَتَصْدِيْقًا بِكِتَابِكَ وَوَفَآءً بِعَهْدِكَ وَاتِّبَاعًا لِسُنَّةِ نَبِيِّكَ مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَاَللّٰهُمَّ إِنِّيْ أَسْأَلُكَ الْعَفْوَوَالْعَافِيَةَ واْلمُعَافَاةَ الدَّآئِمَةَ فِى الدِّيْنِ وَالدُّنْيَا اْلٰاخِرَةِ وَالْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنَ النَّار",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "\u0022Maha Suci Allah, Segala puji bagi Allah, Tidak ada Tuhan selain Allah. Allah Maha Besar, Tiada daya (untuk memperoleh manfaat) dan tiada kemampuan (untuk menolak bahaya) kecuali bersumber dari Allah yang Maha Tinggi dan Maha Agung. Shalawat dan salam bagi Rasulullah saw. Ya Allah, aku Tawaf ini karena beriman kepada-Mu, membenarkan kitab-Mu, dan memenuhi janji-Mu, dan mengikuti sunnah Nabi-Mu Muhammad saw. Ya Allah, sesungguhnya aku mohon kepada-Mu ampunan, kesehatan dan kesejahteraan yang kekal dalam menjalankan agama, di dunia dan di akhirat dari siksa neraka.\u0022",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "2. Doa Thowaf Putaran 2",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text("Pada putaran kedua, dapat membaca doa:"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.right,
                    "اَللّٰهُمَّ إِنَّ هٰذَا اْلبَيْتَ بَيْتُكَ وَالْحَرَمَ حَرَمُكَ وَاْلأَمْنَ أَمْنُكَ وَالْعَبْدَ عَبْدُكَ وَأَنَا عَبْدُكَ وَابْنُ عَبْدُكَ وَهٰذَا مَقَامُ الْعَائِذِبِكَ مِنْ النَّارِ فَحَرِّمْ لُحُوْمَنَا وَبَشَرَتَنَا عَلَى النَّارِ. اَللّٰهُمَّ حَبِّبْ إِلَيْنَا اْلإِيْمَانَ وَزَيِّنْهُ فِيْ قُلُوْبِنَا وَكَرِّهْإِلَيْنَا الْكُفْرَ وَالْفُسُوْقَ وَالْعِصْيَانَ وَاجْعَلْنَا مِنَ الرَّاشِدِيْنَ. اَللّٰهُمَّ قِنِيْ عَذَابَكَ يَوْمَ تَبْعَثُ عِبَادَكَ. اَللّٰهُمَّ ارْزُقْنِى الْجَنَّةَ بِغَيْرِ حِسَاب",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "\u0022Ya Allah,sesungguhnya Baitullah ini rumah-Mu, Tanah mulia ini tanah haram-Mu, Negri aman ini Negri-Mu, hamba ini hamba-Mu, dan aku hamba-Mu anak dari hamba-Mu dan tempat ini tempat berlindung pada-Mu dari siksa neraka. Ya Allah cintakanlah kami pada iman dan peliharalah ia dari hati kami, bencikanlah kami pada perbuatan kufur, fasiq, maksiat dan durhaka serta masukkanlah kami ini dalam golongan yang meandapat petunjuk. Ya Allah, peliharalah aku dari adzab-Mu di hari kelak Engkau membangkitkan hamba-hamba-Mu. Ya Allah, anugerahkanlah surga kepadaku tanpa hisab.\u0022",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "3. Doa Thowaf Putaran 3",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                    "Pada putaran ketiga, bacaan doa yang disarankan adalah:"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.right,
                    "اَللّٰهُمَّ إِنِّيْ أَعُوْذُبِكَ مِنَ اشَّكِّ وَالشِّرْكِ وَالشِّقَاقِ وَالنِّفَاقِ وَسُوٓءِاْلأَخْلَاقِ وَسُوٓءِاْلمَنْظَرِ وَاْلمُنْقَلَبِ فِى اْلمَالِ وَاْلأَهْلِ وَالْوَلَدِ. اَللّٰهُمَّ إِنِّيْ أَسْأَلُك رِضَاكَوَالْجَنَّةَ، وَأَعُوْذُبِكَ مِنْ سَخَطِكَ وَالنَّارِ. اَللّٰهُمَّ إِنِّيْ أَعُوْذُبِكَ مِنْ فِتْنَةِ الْقَبْرِ وَأَعُوْذُبِكَ مِنْ فِتْنَةِ اْلمَحْيَا وَاْلمَمَات",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "\u0022Ya Allah, aku berlindung pada-Mu daripada syak was-was, syirik, cerai berai (bertengkar) muka dua, buruk budi pekerti, buruk pandangan (salah urus) terhadap harta benda dan keluarga. Ya Allah sesungguhnya aku mohon pada-Mu keridhaan-Mu dan syurga, dan aku berlindung pada-Mu daripada murka-Mu dan neraka. Ya Allah, aku berlindung padaMu dari fitnah kubur serta dari fitnah kehidupan dan derita kematian.\u0022",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "4. Doa Thowaf Putaran 4",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                    "Untuk putaran keempat, bacaan doa yang dianjurkan adalah:"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.right,
                    "اَللّٰهُمَّ اجْعَلْهُ حَجًّا مَبْرُوْرًا وَسَعْيًامَشْكُوْرًا وَذَنْبًا مَغْفُوْرًا وَعَمَلًا صَالِحًا مَقْبُوْلًا وَتِجَارَةً لَنْ تَبُوْرَ. يَا عَالِمَ مَا فِى الصُّدُوْرِ أَخْرِجْنِيْ يَا اللهُ مِنَ الظُّلُمٰتِ اِلَى النُّوْرِ. اَللّٰهُمَ إِنِّيْ أَسْأَلُكَ مُوْجِبَاتِ رَحْمَتِكَ وَعَزَآئِمَ مَغْفِرَتِكَ وَالسَّلَامَةَ مِنْ كُلِّ إِثْمٍ وَالْغَنِيْمَةَ مِنْ كُلِّ بِرٍّ وَالْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنَ النَّارِ. رَبِّ قَنِّعْنِيْ بِمَا رَزَقْتَنِيْ وَبَارِكْ لِيْ فِيْمَا أَعْطَيْتَنِيْ وَاخْلُفْ عَلٰى كُلِّ غَائِبَةٍ لِيْ مِنْكَ بِخَيْر",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "\u0022Ya Allah, jadikanlah hajiku ini haji yang mabrur, sa’i yang diterima, dosa yang diampuni dan amal shaleh yang dikabulkan dan perdagangan yang tidak akan mengalami rugi selamanya. Wahai Tuhan Yang Maha Mengetahui apa-apa yang terkandung dalam dada. Keluarkanlah aku dari kegelapan ke cahaya yang terang benderang. Ya Allah aku mohon pada-Mu segala hal yang mendatangkan rahmat-Mu dan segala ampunan-Mu selamat dari segala dosa dan beruntung dengan mendapat rupa-rupa kebaikan, beruntung memperoleh surga, terhindar dari neraka. Tuhanku anugerahkan padaku dan gantilah apa-apa yang aku luput daripadanya dengan kebajikan dari-Mu.\u0022",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "5. Doa Thowaf Putaran 5",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                    "Untuk putaran kelima, bacaan doa yang dianjurkan adalah:"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.right,
                    "اَللّٰهُمَّ أَظِلَّنِيْ تَحْتَ ظِلِّ عَرْشِكَ يَوْمَ لَا ظِلِّ اِلَّا ظِلُّكَ وَلَا بَاقِىَ اِلَّا وَجْهُكَ وَأَسْقِنِيْ مِنْ حَوْضِ نَبِيِّكَ مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمْ شُرْبَةً هَنِيَْئَةً مَرِيْئَةً لَا نَظْمَأُ بَعْدَ هَا أَبَدًا اَللّٰهُمَّ اِنِّيْ أَسْأَلُكَ مِنْ خَيْرِ مَا سَأَلَكَ مِنْهُ نَبِيُّكَ مُحَمَّدٌ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَأَعُوْذُبِكَ مِنْ شَرِّ مَا اسْتَعَاذَكَ مِنْهُ نَبِيُّكَ مُحَمَّدٌ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ. اَللّٰهُمَّ إِنِّيْ أَسْأَلُكَ الْجَنَّةَ وَنَعِيْمَهَا وَمَا يُقَرِّبُنِيْ إِلَيْهَا مِنْ قَوْلٍ أَوْ فِعْلٍ أَوْ عَمَلٍ، وَأَعُوْذُبِكَ مِنَ النَّارِ وَمَا يُقَرِّبُنِيْ إِلَيْهَا مِنْ قَوْلٍ أَوْ فِعْلٍ أَوْ عَمَلٍ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "\u0022Ya Allah lindungilah aku dibawah lindungan-Mu pada hari yang tidak ada naungan selain dari naungan-Mu dan tidak ada yang tinggal kekal selain wajah-Mu. Dan berilah aku minuman dari telaga Nabi Muhammad saw. dengan suatu minuman yang lezat nyaman, sesudah itu aku tidak akan haus untuk selamanya. Ya Allah, aku mohon pada-Mu kebaikan yang diminta oleh Nabi Muhammad saw., dan aku berlindung pada-Mu dari kejahatan dan minta perlindungan-Mu daripada yang diminta Nabi Muhammad saw. Ya Allah, aku mohon pada-Mu surga serta nikmat-Nya dan apapun yang dapat mendekatkan aku pada-Nya dari perkataan atau perbuatan ataupun amal. Dan aku berlindung pada-Mu dari neraka serta apapun yang mendekatkan aku kepada-Nya, baik ucapan, perbuatan ataupun amal.\u0022",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "6. Doa Thowaf Putaran 6",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                    "Untuk putaran keenam, bacaan doa yang dianjurkan adalah:"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.right,
                    "اللّهُمَّ إِنَّ لَكَ عَلَيَّ حُقُوْقًا كَثِيْرَةًفِيْمَا بَيْنِيْ وَبَيْنَكَ وَحُقُوْقًا كَثِيْرَةً فِيْمَا بَيْنِيْ وَبَيْنَ خَلْـقِكَ. اللّهُمَّ مَاكَانَ لَكَ مِنْهَا فَاغْفِرْهُ لِيْ وَمَاكَانَ لِخَلْقِكَ فَتَحَمَّلْهُ عَنِّيْ وَأَغْنِنِى بِحَلاَ لِكَ عَنْ حَرَامِكَ وَبِطَا عَتِكَ عَنْ مَعْصِيَتِكَ وَبِفَضْلِكَ عَمَّنْ سِوَاكَ يَاوَاسِعَ الْمَغْفِرَةِ. اَللّهُمَّ إِنَّ بَيْتَكَ عَظِيْمٌ وَوَجْهَكَ كِرَيْمٌ اَنْتَ يَااللهُ حَلِيْمٌ كَرِيْمٌ عَظِيْمٌ تُحِبُّ الْعَفْوَ فَاعْفُ عَنِّي",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "\u0022Ya Allah, sesungguhnya Engkau mempunyai hak yang banyak sekali atas diriku dalam hubungan antara aku dengan-Mu. Dan Engkau juga mempunyai hak yang banyak sekali dalam hubungan antara aku dengan makhluk-Mu. Ya Allah, apa yang menjadi hak-Mu atas diriku, maka ampunilah aku. Dan apa saja yang menjadi hak makhluk-Mu atas diriku, maka tanggungkanlah dariku. Cukupkanlah diriku dengan rizki-Mu yang halal, terhindar dari yang haram. Dan dengan ta’at kepada-Mu, terhindar dari kemaksiatan. Dan dengan anugerah-Mu terhindar daripada mengharap dari selain daripada-Mu, wahai Tuhan Yang Maha Luas pengampunan-Nya. Ya Allah, sesungguhnya rumah-Mu ini agung, Zat-Mu pun sungguh mulia, dan Engkau ya Allah, Maha Penyabar, Maha Pemurah dan Maha Agung, Engkau suka memberi ampun, maka ampunilah aku\u0022",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "7. Doa Thowaf Putaran 7",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                    "Untuk putaran terakhir, bacaan doa yang dianjurkan adalah:"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.right,
                    "اللّهُمَّ إِنِّيْ أسْأَلُكَ إِيْمَانًا كَا مِلًا وَيَقِيْنًا صَادِقًا وَرِزْقًا وَاسِعًا وَقَلْبًا خَاشِعًا وَلِسَانًا ذَاكِرًا وَحَلَالًا طَيِّبًا وَتَوْبَةً نَصُوْحًا وَتَوْبَةً قَبْلَ الْمَوْتِ وَرَحْمَةً عِنْدَ الْمَوْتِ وَمَغْفِرَةً بَعْدَ الْمَوْتِ وَالْعَفْوَ عِنْدَ الْحِسَابِ وَالْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنَ النَّارِ بِرَ حْمَتِكَ يَاعَزِيْزُ يَاغَفَّارُ.رَبِّ زِدْنِيْ عِلْمًا وَاَلْحِقْنِي بِالصَّالِحِيْن",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "\u0022Ya Allah, aku mohon kepada-Mu iman yang sempurna, keyakinan yang benar, rizki yang luas, hati yang khusyu’, lidah yang selalu berdzikir, rizki yang halal dan baik, tobat yang diterima, taobat sebelum mati, ampunan dan rahmat sesudah mati, ampunan ketika dihisab, keberuntungan memperoleh surga dan selamat dari neraka, dengan kasih sayang-Mu, wahai Tuhan Yang Maha Perkasa, Yang Maha Pengampun. Tuhanku, berilah aku tambahan ilmu pengetahuan dan masukkanlah aku ke dalam golongan orang-orang yang saleh\u0022",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
