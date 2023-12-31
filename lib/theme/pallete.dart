import 'dart:math';

import 'package:flutter/material.dart';

class Pallete {
  static const Color backgroundColor = Colors.white;
  static const Color searchBarColor = Color.fromRGBO(
      17, 41, 204, 1.0);
  static const Color blueColor = Color.fromRGBO(29, 155, 240, 1);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color redColor = Color.fromRGBO(249, 25, 127, 1);
}

Color randomLightColor([double val = 0.8]) {
  var ran = Random();
  r () => 128 + ran.nextInt((127 * val).round());
  return Color.fromRGBO(r(), r(), r(), ran.nextDouble());
}

Color randomDarkColor([double val = 0.8]) {
  var ran = Random();
  r () => 128 - ran.nextInt((127 * val).round());
  return Color.fromRGBO(r(), r(), r(), ran.nextDouble());
}
