import 'package:fatdog/core/configs/extenstion.dart';

class MobileBackground extends StatelessWidget {
  final Widget child;
  const MobileBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: context.deviceHeight * 0.9,
        width: context.deviceWidth,
        child: Image.asset(
          AppImages.background,
          fit: BoxFit.fitWidth,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20)
            .copyWith(top: context.devicePaddingFromTop + 50),
        child: child,
      )
    ]);
  }
}
