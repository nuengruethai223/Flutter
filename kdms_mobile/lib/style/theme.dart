import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class Style {
  static ThemeData theme(BuildContext context) {
    var textTheme = GoogleFonts.promptTextTheme(Theme.of(context).textTheme).apply(
      bodyColor: AppColor.primaryTextColor,
    );
    textTheme = textTheme.copyWith(
      bodyText1: textTheme.bodyText1.copyWith(
        color: AppColor.textColor,
      ),
    );
    return ThemeData(
      scaffoldBackgroundColor: Color(0xffFCFFFC),
      primaryColor: AppColor.primaryColor,
      platform: TargetPlatform.iOS,
      textTheme: textTheme,
      accentColor: AppColor.accentColorYellow,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue),
      cursorColor: Color(0xaa08c6d2),
    );
  }
}
