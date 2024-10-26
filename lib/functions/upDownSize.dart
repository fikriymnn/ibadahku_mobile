class upDownSize {
  double sizeTitle = 18;
  double sizeText = 14;
  double sizeNum = 16;
  double sizeArabic = 20;

  void upSize() {
    sizeTitle++;
    sizeText++;
    sizeNum++;
    sizeArabic++;
  }

  void downSize() {
    sizeTitle--;
    sizeText--;
    sizeArabic--;
    sizeNum--;
  }
}
