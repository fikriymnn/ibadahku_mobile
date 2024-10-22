import 'package:flutter/material.dart';

class PenjelasanMaqom extends StatelessWidget {
  const PenjelasanMaqom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage("assets/maqam-ibrahim.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Maqom Ibrahim",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "Allah SWT. menyebutkan bahwa maqom Ibrahim termasuk dari ayat-ayat Allah."),
              SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  textAlign: TextAlign.right,
                  "إِنَّ أَوَّلَ بَيْتٍ وُضِعَ لِلنَّاسِ لَلَّذِى بِبَكَّةَ مُبَارَكًا وَهُدًى لِّلْعَٰلَمِينَ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "\u0022Sesungguhnya rumah (ibadah) pertama yang dibangun untuk manusia, ialah (Baitullah) yang di Bakkah (Mekah)1 yang diberkahi dan menjadi petunjuk bagi seluruh alam.\u0022 (QS Ali-Imron 96)"),
              SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  textAlign: TextAlign.right,
                  "فِيهِ ءَايَٰتٌۢ بَيِّنَٰتٌ مَّقَامُ إِبْرَٰهِيمَ ۖ وَمَن دَخَلَهُۥ كَانَ ءَامِنًا ۗ وَلِلَّهِ عَلَى ٱلنَّاسِ حِجُّ ٱلْبَيْتِ مَنِ ٱسْتَطَاعَ إِلَيْهِ سَبِيلًا ۚ وَمَن كَفَرَ فَإِنَّ ٱللَّهَ غَنِىٌّ عَنِ ٱلْعَٰلَمِينَ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "\u0022Padanya terdapat tanda-tanda yang nyata, (di antaranya) maqam Ibrahim; barangsiapa memasukinya (Baitullah itu) menjadi amanlah dia; mengerjakan haji adalah kewajiban manusia terhadap Allah, yaitu (bagi) orang yang sanggup mengadakan perjalanan ke Baitullah. Barangsiapa mengingkari (kewajiban haji), maka sesungguhnya Allah Maha Kaya (tidak memerlukan sesuatu) dari semesta alam.\u0022 (QS Ali-Imron 97)"),
            ],
          ),
        ),
      ),
    );
  }
}
