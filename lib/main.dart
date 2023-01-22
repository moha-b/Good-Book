// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_book/core/utils/services.dart';
import 'package:good_book/feature/data/repo/home_repo_impl.dart';
import 'package:good_book/feature/viewmodel/featured_books/featured_books_cubit.dart';
import 'package:good_book/feature/viewmodel/newest_books/news_books_cubit.dart';

import 'core/utils/colors.dart';
import 'core/utils/router.dart';

void main() {
  runApp(const GoodBook());
}

class GoodBook extends StatelessWidget {
  const GoodBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),),
        BlocProvider(create: (context) => NewsBooksCubit(getIt.get<HomeRepoImpl>()),),
      ],
      child: MaterialApp.router(
        routerDelegate: AppRouter.route.routerDelegate,
        routeInformationParser: AppRouter.route.routeInformationParser,
        routeInformationProvider: AppRouter.route.routeInformationProvider,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColor.primary),
      ),
    );
  }
}
