import 'package:go_router/go_router.dart';
import 'package:good_book/feature/home/views/details_view.dart';
import 'package:good_book/feature/home/views/home_view.dart';
import 'package:good_book/feature/splash/views/splash_view.dart';

abstract class AppRouter {
  static const String splashScreen = "/";
  static const String homeScreen = "/homeScreen";
  static const String detailScreen = "/detailScreen";
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
      builder: (context, state) => const DetailsView(),
    ),
  ]);
}
