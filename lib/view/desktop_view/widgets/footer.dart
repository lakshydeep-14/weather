import 'package:fatdog/core/configs/extenstion.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return context.deviceWidth > 900
        ? const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LogoWidget(),
              SizedBox(width: 400, child: SocialHandles()),
              Copyright(),
            ],
          )
        : const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoWidget(),
              SizedBox(
                height: 20,
              ),
              SizedBox(width: 400, child: SocialHandles()),
              SizedBox(
                height: 20,
              ),
              Copyright(),
            ],
          );
  }
}
