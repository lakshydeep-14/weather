import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../core/configs/extenstion.dart';
import '../../../controller/weather_controller.dart';
import '../widgets/background.dart';

class MobileViewScreen extends StatefulWidget {
  const MobileViewScreen({super.key});

  @override
  State<MobileViewScreen> createState() => _MobileViewScreenState();
}

class _MobileViewScreenState extends State<MobileViewScreen> {
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
                  const LogoWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0)
                        .copyWith(bottom: 50),
                    child: SearchTextField(
                      controller: TextEditingController(),
                    ),
                  ),
                  Obx(() => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: WeatherData(
                            data: weatherController.fetching.value == false
                                ? weatherController.address.value
                                : "Loading..."),
                      )),
                  Obx(() => TemperatureDataWid(
                      temp: weatherController.fetching.value == true
                          ? "0"
                          : (weatherController.temperature.value))),
                  const WeatherData(data: "Mostly Sunny"),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: WeatherData(
                        data: DateFormat("dd MMMM")
                            .format(currentDateTime)
                            .toString(),
                        fontSize: 24),
                  ),
                  Center(
                    child: WeatherData(
                        data: DateFormat("EEE, hh:mm aaa")
                            .format(currentDateTime)
                            .toString(),
                        fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Text(
                "Thunderstorms from 3pm-8pm, with mostly clear conditions expected at 8pm.",
                style: context.text.headline4!.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const TimeWithTemperature(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2)
                  .copyWith(left: 15, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Daily Report",
                    style: context.text.headline2!.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const DailyReport(),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoWidget(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: SocialHandles(),
            ),
            const Copyright(),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
