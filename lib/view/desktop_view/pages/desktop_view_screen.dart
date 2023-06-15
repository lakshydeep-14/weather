import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../core/configs/extenstion.dart';
import '../../../controller/weather_controller.dart';
import '../../mobile_view/widgets/background.dart';
import '../widgets/daily_report_web.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';
import '../widgets/temperature_wid.dart';

class DesktopViewScreen extends StatefulWidget {
  const DesktopViewScreen({super.key});

  @override
  State<DesktopViewScreen> createState() => _DesktopViewScreenState();
}

class _DesktopViewScreenState extends State<DesktopViewScreen> {
  WeatherController weatherController = Get.put(WeatherController());
  DateTime currentDateTime = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    weatherController.getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MobileBackground(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  const SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        children: [
                          WeatherData(
                              data: DateFormat("dd MMMM")
                                  .format(currentDateTime)
                                  .toString(),
                              fontSize: 24),
                          WeatherData(
                              data: DateFormat("EEE, hh:mm aaa")
                                  .format(currentDateTime)
                                  .toString(),
                              fontSize: 12)
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Obx(
                          () => WeatherData(
                              data: weatherController.fetching.value == false
                                  ? weatherController.address.value
                                  : "Loading..."),
                        ),
                        Obx(() => TemperatureDataWid(
                            temp: weatherController.fetching.value == true
                                ? "0"
                                : (weatherController.temperature.value))),
                        WeatherData(data: "Mostly Sunny"),
                      ],
                    ),
                  ),
                  const TempWid()
                ],
              ),
            ),
            const DailyReportWeb(),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              padding: EdgeInsets.symmetric(
                  horizontal: context.deviceWidth > 900 ? 50 : 20,
                  vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.white.withOpacity(0.32),
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Thunderstorms from 3pm-8pm, with mostly clear conditions expected at 8pm.",
                    style: context.text.headline2!.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TimeWithTemperature(),
                ],
              ),
            ),
            SizedBox(
              height: context.deviceHeight * 0.2,
            ),
            const Footer(),
            SizedBox(
              height: context.deviceHeight * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
