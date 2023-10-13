
import 'package:flutter/material.dart';

class GlobalTextTheme {
  static const noteTitleFontSize = 15.0;
  static const noteTitleFontWeight = FontWeight.w900;
  static const noteCardFontSize = 12.0;
  static const noteCardFontWeight = FontWeight.w400;
  static TextStyle noteTitleText = baseFontFamily.copyWith(
    fontSize: noteTitleFontSize,
    fontWeight: noteTitleFontWeight
  );
  static const dayButtonFontSize = 12;
  static const dayButtonFontWeight = FontWeight.w100;
  // static const dayButtonDateFontSize = 12;
  static const dayButtonDateFontWeight = FontWeight.w900;
}

TextStyle baseFontFamily = const TextStyle(fontFamily: 'Avenir');