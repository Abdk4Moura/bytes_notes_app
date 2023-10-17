import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final getDummyProvider = FutureProvider((ref) {
  List<List<String>> strAcc = [];
  List<String> charAcc = [];
  for (int j = 0; j < 5; j++) {
    charAcc.add(String.fromCharCode(65 + Random().nextInt(25)));
    for (int i = 0; i < 300; i++) {
      int r = 1 + Random().nextInt(7);
      if (i % r == 0) {
        charAcc.add(' ');
      }
      charAcc.add(String.fromCharCode(97 + Random().nextInt(25)));
    }
    strAcc.add(charAcc);
    charAcc = [];
  }
  var res = strAcc.map((each) => each.join("")).toList();
  return res;
});
