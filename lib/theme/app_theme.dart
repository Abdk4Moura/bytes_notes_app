import 'package:flutter/material.dart';
import 'package:bytes_notes_app/theme/pallete.dart';

class AppTheme {
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    // textTheme: TextTheme
    //   displayLarge: displayLarge ?? headline1,
    //   displayMedium: displayMedium ?? headline2,
    //   displaySmall: displaySmall ?? headline3,
    //   headlineMedium = headlineMedium ?? headline4,
    //   headlineSmall = headlineSmall ?? headline5,
    //   titleLarge = titleLarge ?? headline6,
    // ),
    searchBarTheme: SearchBarThemeData(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular((5))))
    , backgroundColor: const MaterialStatePropertyAll(Pallete.searchBarColor),
    overlayColor: const MaterialStatePropertyAll(Colors.white),
    // shadowColor: const MaterialStatePropertyAll(Colors.transparent),
        elevation: const MaterialStatePropertyAll(0),
    padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
    constraints: const BoxConstraints(maxHeight: 100)),
    appBarTheme: const AppBarTheme(
      backgroundColor: Pallete.backgroundColor,
      elevation: 0,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Pallete.blueColor,
    ),
  );
}