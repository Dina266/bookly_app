import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/Home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/book_detailes_view.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/features/Search/presentation/manager/cubit/search_books_cubit.dart';
import 'package:bookly_app/features/Search/presentation/view/search_view.dart';
import 'package:bookly_app/features/Search/repos/search_repo_imp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) =>  BlocProvider(
        create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
        child: SearchView(),
      ),
    ),
  ]);
}
