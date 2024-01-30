import 'package:bookly_app/features/Home/presentation/views/book_detailes_view.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/features/Search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static String kHomeView = '/homeView';
  static String kBookDetails = '/bookDetails';
  static String kSearchView = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => const BookDetailsView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
