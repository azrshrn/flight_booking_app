import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);
Color secondary = const Color(0xFFF37B67);

class Styles {
  //Color
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFF526799);
  static Color kakiColor = const Color(0xFFd2bdb6);

  //Text Style
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle titleStyle =
      TextStyle(fontSize: 35, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
