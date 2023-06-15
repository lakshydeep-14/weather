import 'package:fatdog/view/desktop_view/widgets/sun_logo.dart';
import 'package:flutter/material.dart';

import '../../../core/configs/extenstion.dart';

class TempWid extends StatefulWidget {
  const TempWid({super.key});

  @override
  State<TempWid> createState() => _TempWidState();
}

class _TempWidState extends State<TempWid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
      child: context.deviceWidth > 830
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "High",
                        style: context.text.headline6!.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        context.deviceWidth > 1054 ? "34°Celcius" : "34°C",
                        style: context.text.headline1!.copyWith(
                            color: AppColors.blue,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Mostly Sunny",
                        style: context.text.headline6!.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SunImage(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "High",
                          style: context.text.headline6!.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          context.deviceWidth > 1054 ? "19°Celcius" : "19°C",
                          style: context.text.headline1!.copyWith(
                              color: AppColors.red,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Mostly Sunny",
                          style: context.text.headline6!.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "High",
                      style: context.text.headline6!.copyWith(
                          color: AppColors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      context.deviceWidth > 1054 ? "34°Celcius" : "34°C",
                      style: context.text.headline1!.copyWith(
                          color: AppColors.blue,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Mostly Sunny",
                      style: context.text.headline6!.copyWith(
                          color: AppColors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),

                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "High",
                          style: context.text.headline6!.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          context.deviceWidth > 1054 ? "19°Celcius" : "19°C",
                          style: context.text.headline1!.copyWith(
                              color: AppColors.red,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Mostly Sunny",
                          style: context.text.headline6!.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                //SunImage()
              ],
            ),
    );
  }
}
