import 'package:flutter/material.dart';
export 'package:flutter/material.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'app_images.dart';
export 'constants.dart';
export 'colors.dart';
export '../widgets/widget_extension.dart';

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  IconThemeData get iconThem => theme.iconTheme;
  TextTheme get text => theme.textTheme;
  double get deviceHeight => MediaQuery.of(this).size.height;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get devicePaddingFromTop => MediaQuery.of(this).padding.top;
  double get devicePaddingFromBottom => MediaQuery.of(this).padding.bottom;
  Orientation get deviceOrientation => MediaQuery.of(this).orientation;
  double get deviceShortestSide => MediaQuery.of(this).size.shortestSide;
}
