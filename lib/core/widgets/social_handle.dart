import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../configs/extenstion.dart';

class SocialHandles extends StatefulWidget {
  const SocialHandles({super.key});

  @override
  State<SocialHandles> createState() => _SocialHandlesState();
}

class _SocialHandlesState extends State<SocialHandles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [...socialHandle.map((e) => _circleBorder(e))],
      ),
    );
  }

  List<IconData> socialHandle = [
    FontAwesomeIcons.twitter,
    FontAwesomeIcons.telegram,
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.mediumM,
    FontAwesomeIcons.github,
    FontAwesomeIcons.redditAlien,
  ];

  Widget _circleBorder(IconData icons) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:
              Border.all(width: 2, color: AppColors.white.withOpacity(0.05))),
      child: Center(
        child: FaIcon(
          icons,
          color: AppColors.white,
          size: 25,
        ),
      ),
    );
  }
}
