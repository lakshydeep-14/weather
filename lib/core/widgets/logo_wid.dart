import '../configs/extenstion.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.logo),
        const SizedBox(
          width: 10,
        ),
        Text(
          "Mausam",
          style: context.text.headline1!.copyWith(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.white),
        )
      ],
    );
  }
}
