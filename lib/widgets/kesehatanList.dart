import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/screens/kesehatan/list1.dart';
import 'package:ibadahku_mobile/screens/kesehatan/list2.dart';
import 'package:ibadahku_mobile/screens/kesehatan/list3.dart';
import 'package:ibadahku_mobile/screens/kesehatan/list4.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class KesehatanList extends StatelessWidget {
  const KesehatanList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView(
          children: [
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.temperatureHalf,
                color: Colors.blue,
              ),
              title: Text(
                'Kondisi yang dapat memengaruhi kesehatan jemaah haji',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                pushWithoutNavBar(
                  context,
                  MaterialPageRoute(
                    builder: (context) => List1(),
                  ),
                );
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.sheetPlastic,
                color: Colors.blue,
              ),
              title: Text(
                'Kebijakan kesehatan untuk calon haji Indonesia',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                pushWithoutNavBar(
                  context,
                  MaterialPageRoute(
                    builder: (context) => List2(),
                  ),
                );
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.virusCovid,
                color: Colors.lightGreen,
              ),
              title: Text(
                'Kondisi Klinis Yang Tidak Memenuhi Syarat Istithah (Mampu) Kesehatan',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                pushWithoutNavBar(
                  context,
                  MaterialPageRoute(
                    builder: (context) => List3(),
                  ),
                );
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.kitMedical,
                color: Colors.orange,
              ),
              title: Text(
                'Mengoptimalkan status kesehatan',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                pushWithoutNavBar(
                  context,
                  MaterialPageRoute(
                    builder: (context) => List4(),
                  ),
                );
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.heartPulse,
                color: Colors.purple,
              ),
              title: Text(
                'Menjaga kesehatan selama haji',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('tapped');
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.house,
                color: Colors.orange,
              ),
              title: Text(
                'Setelah kembali ke tanah air',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('tapped');
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.solidLightbulb,
                color: Colors.pink,
              ),
              title: Text(
                'Tips kesehatan di tanah suci',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('tapped');
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.carrot,
                color: Colors.orange,
              ),
              title: Text(
                'Buah dan sayuran',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('tapped');
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.droplet,
                color: Colors.red,
              ),
              title: Text(
                'Haid / Menstruasi',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('tapped');
              },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.book,
                color: Colors.lightGreen,
              ),
              title: Text(
                'Referensi',
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('tapped');
              },
            ),
          ],
        ),
      ),
    );
  }
}
