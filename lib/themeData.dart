import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color grey = Color.fromRGBO(46, 46, 46, 100);
  static const Color darkGreen = Color.fromRGBO(20, 48, 59, 100);
  static const Color nearlyWhite = Color(0xFFFFFFFF);
  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const TextStyle Greetings = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 25,
  );
  static const TextStyle Name = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w900,
    fontSize: 25,
  );
  static const TextStyle Title = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppTheme.grey);
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
