import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/constants/colors.dart';
import 'package:ibadahku_mobile/widgets/textWidgets.dart';

class PetaJarakScreen extends StatelessWidget {
  const PetaJarakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Peta Jarak",
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextWidget(
              text: "Peta Miqat",
              color: blackColor,
              textSize: 20,
              isTitle: true,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/peta_miqat.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget(
              text: "Peta Armina",
              color: blackColor,
              textSize: 20,
              isTitle: true,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/peta_miqat.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget(
              text: "Peta Kemah-Kemah Indo di Mina",
              color: blackColor,
              textSize: 20,
              isTitle: true,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/peta_miqat.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
