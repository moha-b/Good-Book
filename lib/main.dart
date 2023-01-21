// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'core/utils/colors.dart';
import 'core/utils/router.dart';

void main() {
  runApp(const GoodBook());
}

class GoodBook extends StatelessWidget {
  const GoodBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AppRouter.route.routerDelegate,
      routeInformationParser: AppRouter.route.routeInformationParser,
      routeInformationProvider: AppRouter.route.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColor.primary),
    );
  }
}
