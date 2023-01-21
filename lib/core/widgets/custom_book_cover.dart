import 'package:flutter/material.dart';

class CustomBookCover extends StatelessWidget {
  const CustomBookCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(color: Colors.orange,),
      ),
    );
  }
}