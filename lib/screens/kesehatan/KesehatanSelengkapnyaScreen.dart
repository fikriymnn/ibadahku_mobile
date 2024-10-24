import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class KesehatanSelengkapnyaScreen extends StatelessWidget {
  const KesehatanSelengkapnyaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Kesehatan Haji",
          color: whiteColor,
          textSize: 20,
          isTitle: true,
        ),
        backgroundColor: primaryColor,
        /* actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: whiteColor,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: whiteColor,
              )),
        ], */
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
          child: Column(
            children: <Widget>[
              Text(
                "Ibadah umroh dan haji memerlukan kesiapan fisik dan mental yang optimal. Oleh karena itu, kesehatan para calon jemaah menjadi syarat wajib yang ditetapkan oleh pemerintah Indonesia sebelum diberikan izin untuk berangkat ke tanah suci.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Untuk mencapai kesempurnaan dalam beribadah, kesehatan yang baik sangat penting. Oleh karena itu, calon jemaah harus memperhatikan, menjaga, dan meningkatkan kesehatan mereka jauh-jauh hari sebelum berangkat ke tanah suci, selama berada di sana, serta setelah kembali.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
