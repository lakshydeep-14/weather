import 'package:fatdog/view/home.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'core/configs/extenstion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    deviceOrientation = context.deviceOrientation;
    deviceShortestSide = context.deviceShortestSide;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gothic',
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.normal,
              color: AppColors.black),
          headline2: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              color: AppColors.black),
          headline3: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
              color: AppColors.black),
          headline4: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: AppColors.black),
          headline5: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.normal,
              color: AppColors.black),
          headline6: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: AppColors.black),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
