import 'package:flutter/material.dart';
import 'package:good_book/utils/colors.dart';

TextStyle _getTextStyle(double fontSize, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: "EricaOne",
      color: color,
      );
}

// regular style
TextStyle setStyle({double size = 15, Color color = AppColor.white}) {
  return _getTextStyle(size, color);
}