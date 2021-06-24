import 'package:flutter/material.dart';

class AppColor {
  static const MaterialColor primaryColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(_primaryValue),
      100: Color(0xff17bdc8),
      200: Color(0xff26b4bd),
      300: Color(0xff35acb3),
      400: Color(0xff44a3a9),
      500: Color(0xff539a9e),
      600: Color(0xff629194),
      700: Color(0xff71888a),
    },
  );
  static const int _primaryValue = 0xFF2C7D4B;
  static const Color backgroundTabColor = Color(0xff10a2b4);
  static const Color facebookColor = Color(0xff2D88FF);
  static const Color textColor = Color(0xff3E3E3E);
  static const Color primaryTextColor = Color(0xff0E2B19);
  static const Color accentColorGreen = Color(0xff2C7D4B);
  static const Color accentColorYellow = Color(0xffFFEB00);
}
