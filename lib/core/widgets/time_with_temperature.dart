// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fatdog/core/configs/extenstion.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class TimeWithTemperature extends StatelessWidget {
  const TimeWithTemperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 5),
      height: 150,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ...tempDatas.map((e) => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      border: GradientBoxBorder(
                        gradient: LinearGradient(colors: [
                          AppColors.white.withOpacity(0.0),
                          AppColors.white.withOpacity(0.32),
                        ]),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(colors: [
                        AppColors.white.withOpacity(0.0),
                        AppColors.white.withOpacity(0.32)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                  height: 160,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          e.time == 0 ? "Now" : (e.time.toString() + 'PM'),
                          style: context.text.headline3!.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SvgPicture.asset(AppImages.temp),
                        Text(
                          "34°C",
                          style: context.text.headline1!.copyWith(
                              fontSize: 24,
                              color: AppColors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}

List<TemperatureData> tempDatas = [
  TemperatureData(temp: 34, time: 0),
  TemperatureData(temp: 34, time: 4),
  TemperatureData(temp: 34, time: 5),
  TemperatureData(temp: 34, time: 6),
  TemperatureData(temp: 34, time: 7),
  TemperatureData(temp: 34, time: 8),
  TemperatureData(temp: 34, time: 9),
  TemperatureData(temp: 34, time: 10),
  TemperatureData(temp: 34, time: 11),
  TemperatureData(temp: 34, time: 12),
];

class TemperatureData {
  int time, temp;
  TemperatureData({required this.temp, required this.time});
}
