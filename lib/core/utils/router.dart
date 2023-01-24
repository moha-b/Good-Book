import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:good_book/core/utils/services.dart';
import '../../features/Splash/splash_view.dart';
import '../../features/data/models/book_model.dart';
import '../../features/data/repos/home_repo_impl.dart';
import '../../features/home/book_details_view.dart';
import '../../features/home/home_view.dart';
import '../../features/search/search_view.dart';
import '../../features/viewmodel/similar_books_cubit/similar_books_cubit.dart';

abstract class AppRouter {
  static const String splashScreen = "/";
  static const String homeScreen = "/homeScreen";
  static const String detailScreen = "/detailScreen";
  static const String searchScreen = "/searchScreen";
  static final route = GoRouter(routes: [
    GoRoute(
      path: splashScreen,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeScreen,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: detailScreen,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(
          getIt.get<HomeRepoImpl>(),
        ),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: searchScreen,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}