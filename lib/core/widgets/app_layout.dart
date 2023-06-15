import 'package:fatdog/core/configs/extenstion.dart';
import 'package:fatdog/core/widgets/responsive.dart';

class AppContentView extends StatelessWidget {
  final Widget mobile;
  final Widget? desktop;

  const AppContentView({
    super.key,
    required this.mobile,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    if (Responsive().deviceType() == "desktop") {
      return desktop ?? mobile;
    } else {
      return mobile;
    }
  }
}
