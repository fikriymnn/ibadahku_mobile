import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/ihramMiqot/ihramMiqotScreen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../constants/colors.dart';
import '../../../widgets/textWidgets.dart';

class FiqihUmrohScreen extends StatelessWidget {
  const FiqihUmrohScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> items = [
      {
        'image': 'assets/ihram_di_miqot.png',
        'text': 'Ihram di Miqot',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => IhramMiqotScreen(),
            ),
          );
        },
      },
      {
        'image': 'assets/haji.png',
        'text': 'Thowaf',
        'click': () {},
      },
      {
        'image': 'assets/maqom.png',
        'text': 'Maqom Ibrahim',
        'click': () {},
      },
      {
        'image': 'assets/zamzam_icon.png',
        'text': 'Minum Zamzam',
        'click': () {},
      },
      {
        'image': 'assets/sai-icon.png',
        'text': "Sa'i",
        'click': () {},
      },
      {
        'image': 'assets/tahalul-icon.png',
        'text': 'Cukur Rambut',
        'click': () {},
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextWidget(
          text: "Fiqih Umroh",
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
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: items[index]['click'],
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    items[index]['image']!,
                    height: 125,
                    width: 125,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    items[index]['text']!,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
