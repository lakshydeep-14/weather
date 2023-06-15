// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fatdog/core/configs/extenstion.dart';

class DailyReportWeb extends StatelessWidget {
  const DailyReportWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return context.deviceWidth < 873
        ? const DailyReport()
        : Container(
            margin: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 5),
            child: Expanded(
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  ...dailyReportWebDatas.map((e) => Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.white.withOpacity(0.32),
                              width: 1,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
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
                                  const SizedBox(
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

List<DailyReportWebModel> dailyReportWebDatas = [
  DailyReportWebModel(day: "Today"),
  DailyReportWebModel(day: "Sat"),
  DailyReportWebModel(day: "Sun"),
  DailyReportWebModel(day: "Mon"),
  DailyReportWebModel(day: "Tue"),
  DailyReportWebModel(day: "Wed"),
  DailyReportWebModel(day: "Thur"),
  DailyReportWebModel(day: "Fri"),
  DailyReportWebModel(day: "Sat"),
];

class DailyReportWebModel {
  String day;
  int temp, low, high;
  DailyReportWebModel(
      {this.temp = 30, required this.day, this.low = 19, this.high = 34});
}
