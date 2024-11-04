import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle regularText({required double size, Color? color}) =>
      TextStyle(
        fontSize: size,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle mediumText({required double size, Color? color}) =>
      TextStyle(
        fontSize: size,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle boldText({required double size, Color? color}) => TextStyle(
        fontSize: size,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w900,
        color: color,
      );
  static TextStyle semiboldText({required double size, Color? color}) =>
      TextStyle(
        fontSize: size,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: color,
      );
}
