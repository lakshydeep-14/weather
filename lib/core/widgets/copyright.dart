import 'package:fatdog/core/configs/extenstion.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "© 2023 Mausam. All rights reserved.",
      style: context.text.headline5!
          .copyWith(color: AppColors.white, fontWeight: FontWeight.bold),
    );
  }
}
