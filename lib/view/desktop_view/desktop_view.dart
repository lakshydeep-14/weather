import 'package:fatdog/view/desktop_view/pages/desktop_view_screen.dart';
import 'package:get/get.dart';

import '../../core/configs/extenstion.dart';
import '../../controller/weather_controller.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({
    super.key,
  });

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  WeatherController weatherController = Get.put(WeatherController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    weatherController.isDesktop.value = true;
  }

  @override
  Widget build(BuildContext context) {
    return const DesktopViewScreen();
  }
}
