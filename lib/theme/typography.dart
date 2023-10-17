import 'package:flutter/material.dart';

class GlobalTextTheme {
  static const noteTitleFontSize = 15.0;
  static const noteTitleFontWeight = FontWeight.w900;
  static const noteCardFontSize = 12.0;
  static const noteCardFontWeight = FontWeight.w400;
  static TextStyle noteCardTitleText = baseFontFamily.copyWith(
      fontSize: noteTitleFontSize, fontWeight: noteTitleFontWeight);
  static TextStyle openNoteTitleText =
      baseFontFamily.copyWith(fontSize: 23, fontWeight: FontWeight.w600);
  static TextStyle openNoteContentText =
      baseFontFamily.copyWith(fontSize: 18, fontWeight: FontWeight.w300);
  static TextStyle labelText =
      baseFontFamily.copyWith(fontSize: 15, fontWeight: FontWeight.w300);
  static const dayButtonFontSize = 13.0;
  static const dayButtonFontWeight = FontWeight.w600;
  static TextStyle dayButtonText = baseFontFamily.copyWith(
    fontSize: dayButtonFontSize,
    fontWeight: dayButtonFontWeight,
  );
  static const dayButtonDateFontSize = 25.0;
  static const dayButtonDateFontWeight = FontWeight.w900;
  static TextStyle dayButtonDateText = baseFontFamily.copyWith(
    fontSize: dayButtonDateFontSize,
    fontWeight: dayButtonDateFontWeight,
  );
}

TextStyle baseFontFamily = const TextStyle(fontFamily: 'Avenir');
