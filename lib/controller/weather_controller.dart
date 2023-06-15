import 'package:dio/dio.dart';
import 'package:fatdog/core/configs/extenstion.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class WeatherController extends GetxController {
  RxBool hasPermission = false.obs;
  RxBool isDesktop = false.obs;
  RxBool fetching = false.obs;
  RxString temperature = ''.obs;
  RxString address = ''.obs;

  //Location Permission
  checkPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission()
          .then((value) => hasPermission.value = true);
    } else {
      hasPermission.value = true;
    }
  }

  //User Current Location
  getUserLocation() async {
    await checkPermission();
    if (hasPermission.value == true) {
      fetching.value = true;

      Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
          .then((value) async {
        getAddress(value);
        String temp = await getTemperature(value);
        temperature.value = temp;
        fetching.value = false;
      });
    } else {
      checkPermission();
    }
  }

  //User Current Address FOR MOBILE
  getAddress(Position position) async {
    if (isDesktop.value == false) {
      try {
        List<Placemark> placemarks = await placemarkFromCoordinates(
            position.latitude, position.longitude);

        Placemark place = placemarks[0];

        address.value =
            "${place.locality}, ${place.administrativeArea}, ${place.country}";
      } catch (e) {
        print(e);
      }
    } else {}
  }

  // CUrrent Temperature
  getTemperature(Position position) async {
    final response = await Dio().get(
        '${apiURL}lat=${position.latitude}&lon=${position.longitude}&units=metric&appid=$weatherAPIkey');
    //final result = GetWeatherModel.fromJson(response.data);
    double temp = response.data['main']['temp'];
    if (isDesktop.value == true) {
      address.value =
          "${response.data['name']}, ${response.data['sys']['country']}";
    }
    return temp.floor().toString();
  }
}
