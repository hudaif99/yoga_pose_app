import 'package:flutter/material.dart';

class ColorConstants{
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color primaryColor = Color(0xFF2D5063);

  static const List<Color> gradient1 = [
    Color(0xFFF5B696),
    Color(0xFFDE628A),
  ];

  static const List<Color> gradient2 = [
    Color(0xFFF9BDBF),
    Color(0xFFB09AA6),
  ];

  static const List<Color> gradient3 = [
    Color(0xFFF5B696),
    Color(0xFFDE648A),
  ];

  static const Map<int, Color> colorMap = {
    50: Color.fromRGBO(45, 80, 99, .1),
    100: Color.fromRGBO(45, 80, 99, .2),
    200: Color.fromRGBO(45, 80, 99, .3),
    300: Color.fromRGBO(45, 80, 99, .4),
    400: Color.fromRGBO(45, 80, 99, .5),
    500: Color.fromRGBO(45, 80, 99, .6),
    600: Color.fromRGBO(45, 80, 99, .7),
    700: Color.fromRGBO(45, 80, 99, .8),
    800: Color.fromRGBO(45, 80, 99, .9),
    900: Color.fromRGBO(45, 80, 99, 1),
  };
}