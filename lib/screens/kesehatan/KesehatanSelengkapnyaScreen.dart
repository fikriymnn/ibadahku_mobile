import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/functions/upDownSize.dart';
import 'package:ibadahku_mobile/widgets/buttonChangeSizeTextWidget.dart';
import 'package:ibadahku_mobile/widgets/customAppBar.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KesehatanSelengkapnyaScreen extends StatelessWidget {
  final ValueNotifier<upDownSize> upDownNotifier = ValueNotifier(upDownSize());
  KesehatanSelengkapnyaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Kesehatan Haji", height: 56),
      floatingActionButton: ButtonChangeSizeTextWidget(UppSize: () {
        upDownNotifier.value.upSize();
        upDownNotifier.notifyListeners();
      }, DownSize: () {
        upDownNotifier.value.downSize();
        upDownNotifier.notifyListeners();
      }),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
          child: ValueListenableBuilder(
              valueListenable: upDownNotifier,
              builder: (context, upDown, child) {
                return Column(
                  children: <Widget>[
                    Text(
                      "Ibadah umroh dan haji memerlukan kesiapan fisik dan mental yang optimal. Oleh karena itu, kesehatan para calon jemaah menjadi syarat wajib yang ditetapkan oleh pemerintah Indonesia sebelum diberikan izin untuk berangkat ke tanah suci.",
                      style: TextStyle(
                        fontSize: upDown.sizeTitle,
                        color: blackColor,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Untuk mencapai kesempurnaan dalam beribadah, kesehatan yang baik sangat penting. Oleh karena itu, calon jemaah harus memperhatikan, menjaga, dan meningkatkan kesehatan mereka jauh-jauh hari sebelum berangkat ke tanah suci, selama berada di sana, serta setelah kembali.",
                      style: TextStyle(
                        fontSize: upDown.sizeTitle,
                        color: blackColor,
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
