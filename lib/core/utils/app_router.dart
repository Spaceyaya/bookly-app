import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/home_repo/home_repo_impl.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentaion/views/book_details_view.dart';
import 'package:bookly/features/home/presentaion/views/home_view.dart';
import 'package:bookly/features/search/presentaion/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/widgets/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchViews(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child:  BookDetailsView(books: state.extra as BookModel ,)),
      ),
    ],
  );
}
