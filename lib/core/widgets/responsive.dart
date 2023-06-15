import 'package:flutter/material.dart';
import '../configs/constants.dart';

class Responsive {
  late String device;

  String deviceType() {
    device = "mobile";

    if (deviceShortestSide! > 450) {
      device = "desktop";
    }
    return device;
  }

  BoxConstraints formAreaWidth() {
    return const BoxConstraints(maxWidth: 600);
  }

  BoxConstraints contentAreaWidth() {
    late double mw;

    device = deviceType();

    if (deviceOrientation == Orientation.landscape) {
      if (device == "mobile") {
        mw = 450;
      } else if (device == "desktop") {
        mw = 1100;
      }
    }

    if (deviceOrientation == Orientation.portrait) {
      if (device == "mobile") {
        mw = 550;
      } else if (device == "desktop") {
        mw = 700;
      }
    }

    // return maxWidth;
    return BoxConstraints(maxWidth: mw);
  }
}
