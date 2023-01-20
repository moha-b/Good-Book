// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_book/utils/colors.dart';
import 'feature/splash/views/splash_view.dart';

void main() {
  runApp(const GoodBook());
}

class GoodBook extends StatelessWidget {
  const GoodBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColor.primary),
      home: SplashView()
    );
  }
}
