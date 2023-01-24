import 'package:flutter/material.dart';
import 'package:good_book/core/utils/colors.dart';

abstract class Styles {

  static TextStyle _getTextStyle(double fontSize, Color? color, String? fontFamily) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily ?? "EricaOne",
      color: color
    );
  }

  static TextStyle setStyle({double size = 15, Color color = AppColor.white,String? fontFamily}) {
    return _getTextStyle(size,color,fontFamily);
  }
}