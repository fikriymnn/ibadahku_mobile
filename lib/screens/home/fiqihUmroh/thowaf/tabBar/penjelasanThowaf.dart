import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/jenisThowaf.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/keutamaanThowaf.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/peringatanThowaf.dart';
import 'package:ibadahku_mobile/screens/home/fiqihUmroh/thowaf/syaratThowaf.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../../../constants/colors.dart';

class PenjelasanThowaf extends StatelessWidget {
  const PenjelasanThowaf({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        'leading': FaIcon(
          FontAwesomeIcons.book,
          color: Colors.blue,
        ),
        'title': 'Keutamaan Thowaf',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => KeutamaanThowaf(),
            ),
          );
        },
      },
      {
        'leading': FaIcon(
          FontAwesomeIcons.fileCircleCheck,
          color: Colors.green,
        ),
        'title': 'Syarat Thowaf',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => SyaratThowaf(),
            ),
          );
        },
      },
      {
        'leading': FaIcon(
          FontAwesomeIcons.fileLines,
          color: Colors.blue,
        ),
        'title': 'Jenis-jenis Thowaf',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => JenisThowaf(),
            ),
          );
        },
      },
      {
        'leading': const FaIcon(
          FontAwesomeIcons.triangleExclamation,
          color: Color.fromARGB(255, 233, 200, 16),
        ),
        'title': 'Peringatan-peringatan',
        'click': () {
          pushWithoutNavBar(
            context,
            MaterialPageRoute(
              builder: (context) => PeringatanThowaf(),
            ),
          );
        },
      },
    ];
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          color:
              (index + 1) % 2 == 0 ? primaryColor.withOpacity(0.2) : whiteColor,
          child: ListTile(
            leading: items[index]['leading'],
            title: Text(items[index]['title']),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: items[index]['click'],
          ),
        );
      },
    );
  }
}
