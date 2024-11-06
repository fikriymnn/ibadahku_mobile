import 'package:flutter/material.dart';
import 'package:ibadahku_mobile/screens/kesehatan/KesehatanSelengkapnyaScreen.dart';
import 'package:ibadahku_mobile/widgets/customAppBar.dart';
import 'package:ibadahku_mobile/widgets/kesehatanList.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../constants/colors.dart';
import '../../widgets/textWidgets.dart';

class KesehatanScreen extends StatefulWidget {
  const KesehatanScreen({super.key});

  @override
  State<KesehatanScreen> createState() => _KesehatanScreenState();
}

class _KesehatanScreenState extends State<KesehatanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Kesehatan", height: 56),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 15.0),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 220,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                    child: Text(
                      "Kesehatan Umroh dan Haji",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
                    child: Text(
                      "Ibadah umroh dan haji memerlukan kesiapan fisik dan mental yang optimal. Oleh karena itu, kesehatan para calon jemaah menjadi syarat wajib yang ditetapkan oleh...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        pushWithoutNavBar(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KesehatanSelengkapnyaScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "SELENGKAPNYA",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const KesehatanList(),
          ],
        ),
      ),
    );
  }
}
