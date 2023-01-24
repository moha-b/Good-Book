// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_book/core/utils/services.dart';
import 'package:good_book/features/viewmodel/featured_books_cubit/featured_books_cubit.dart';
import 'package:good_book/features/viewmodel/newest_books_cubit/newset_books_cubit.dart';
import 'features/data/repos/home_repo_impl.dart';
import 'core/utils/colors.dart';
import 'core/utils/router.dart';

void main() {
  setup();
  runApp(const GoodBook());
}

class GoodBook extends StatelessWidget {
  const GoodBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: AppRouter.route.routerDelegate,
        routeInformationParser: AppRouter.route.routeInformationParser,
        routeInformationProvider: AppRouter.route.routeInformationProvider,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: AppColor.primary),
      ),
    );
  }
}
