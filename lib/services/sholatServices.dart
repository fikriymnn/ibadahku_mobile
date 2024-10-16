import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

class JadwalSholat {
  final dio = Dio();

  String formattedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());

  Future<Position> getPermisionLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future getJadwalSholat() async {
    Position myLocation = await getPermisionLocation();
    DateTime now = DateTime.now();
    dynamic timeZoneName = now.timeZoneName;
    print(myLocation);
    print(timeZoneName);
    print(formattedDate);

    try {
      final response = await dio.get(
        'http://api.aladhan.com/v1/timings/${formattedDate}?latitude=${myLocation.latitude}&longitude=${myLocation.longitude}&method=20',
      );
      //print(response.data["data"]);
      return response.data;
    } catch (e) {
      print(e.toString());
    }
  }
}
