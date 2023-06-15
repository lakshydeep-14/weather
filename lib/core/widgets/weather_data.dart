import '../configs/extenstion.dart';

class WeatherData extends StatelessWidget {
  final String data;
  final double fontSize;
  const WeatherData({super.key, required this.data, this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: context.text.headline4!.copyWith(
          fontSize: fontSize,
          color: AppColors.white,
          fontWeight: FontWeight.bold),
    );
  }
}

class TemperatureDataWid extends StatelessWidget {
  final String temp;
  const TemperatureDataWid({super.key, this.temp = '34'});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "$temp°C",
        style: context.text.headline1!.copyWith(
            fontSize: 72, color: AppColors.yellow, fontWeight: FontWeight.bold),
      ),
    );
  }
}
