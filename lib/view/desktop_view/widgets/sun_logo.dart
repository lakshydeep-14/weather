import 'package:fatdog/core/configs/extenstion.dart';

class SunImage extends StatelessWidget {
  const SunImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 300,
      width: 500,
      child: Stack(
        children: [
          Positioned(
              top: 40,
              left: -150,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.yellow,
                          spreadRadius: 2,
                          blurRadius: 20)
                    ],
                    color: AppColors.yellow),
                height: 200,
                width: 200,
              )),
          Positioned(
              top: 20,
              left: -150,
              right: 0,
              child: SvgPicture.asset(
                AppImages.sun,
                height: 250,
                width: 250,
              )),
          Positioned(
              bottom: 0, left: 0, right: 0, child: Image.asset(AppImages.cloud))
        ],
      ),
    );
  }
}
