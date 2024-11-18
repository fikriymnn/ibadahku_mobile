class upDownSize {
  double sizeTitle = 18;
  double sizeText = 14;
  double sizeNum = 16;
  double sizeArabic = 20;

  final double maxTitle = 28;
  final double maxText = 24;
  final double maxNum = 26;
  final double maxArabic = 30;

  final double minTitle = 14;
  final double minText = 10;
  final double minNum = 12;
  final double minArabic = 16;

  void upSize() {
    if (sizeTitle < maxTitle) sizeTitle++;
    if (sizeText < maxText) sizeText++;
    if (sizeNum < maxNum) sizeNum++;
    if (sizeArabic < maxArabic) sizeArabic++;
  }

  void downSize() {
    if (sizeTitle > minTitle) sizeTitle--;
    if (sizeText > minText) sizeText--;
    if (sizeArabic > minArabic) sizeArabic--;
    if (sizeNum > minNum) sizeNum--;
  }
}
