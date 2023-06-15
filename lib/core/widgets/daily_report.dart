// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fatdog/core/configs/extenstion.dart';

class DailyReport extends StatelessWidget {
  const DailyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
      height: 160,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ...dailyReportDatas.map((e) => Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.white.withOpacity(0.32),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: AppColors.background),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.temp,
                              height: 30,
                              width: 30,
                              color: AppColors.yellow,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              e.day,
                              style: context.text.headline1!.copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "${e.temp}°C",
                          style: context.text.headline1!.copyWith(
                              fontSize: 24,
                              color: AppColors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "L: ${e.low}° - H: ${e.high}°",
                          style: context.text.headline1!.copyWith(
                              fontSize: 24,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.normal),
                        )
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}

List<DailyReportModel> dailyReportDatas = [
  DailyReportModel(day: "Today"),
  DailyReportModel(day: "Sat"),
  DailyReportModel(day: "Sun"),
  DailyReportModel(day: "Mon"),
  DailyReportModel(day: "Tue"),
  DailyReportModel(day: "Wed"),
  DailyReportModel(day: "Thur"),
  DailyReportModel(day: "Fri"),
  DailyReportModel(day: "Sat"),
];

class DailyReportModel {
  String day;
  int temp, low, high;
  DailyReportModel(
      {this.temp = 30, required this.day, this.low = 19, this.high = 34});
}
