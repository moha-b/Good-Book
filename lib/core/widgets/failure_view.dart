import 'package:flutter/material.dart';
import 'package:good_book/core/utils/styles.dart';

class FailureView extends StatelessWidget {
  const FailureView({Key? key, required this.errorMessage}) : super(key: key);
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: Styles.setStyle(size: 20),
      ),
    );
  }
}