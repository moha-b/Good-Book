import 'package:flutter/material.dart';
import 'package:good_book/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
        required this.backgroundColor,
        required this.textColor,
        required this.text,
        this.textStyle,
        this.borderRadius
      })
      : super(key: key);

  Color backgroundColor;
  Color textColor;
  String text;
  TextStyle? textStyle;
  BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(15),
              )),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.setStyle(color: textColor),
          )),
    );
  }
}
