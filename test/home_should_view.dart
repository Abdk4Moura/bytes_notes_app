import 'package:bytes_notes_app/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:core';

void main() {
  test('Something should happen', () {
    String initial = "Hello";
    String reversed = reverseString(initial);
    expect(reversed, 'olleH');
  });
}