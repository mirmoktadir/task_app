import 'package:flutter/cupertino.dart';

class AppColor {
  static const Color primaryColor = Color(0xffF15223);
  static const Color hintText = Color(0xff040415);
  static const Color lightGrey = Color(0xffF4F5F7);
}

class Images {
  static String get logo => 'assets/images/logo.png';
  static String get splashLogo => 'assets/images/splash_logo.png';
}

class ScreenSize {
  BuildContext context;
  ScreenSize(this.context);
  double get mainHeight => MediaQuery.of(context).size.height;
  double get mainWidth => MediaQuery.of(context).size.width;
  double get block => mainWidth / 100;
}
