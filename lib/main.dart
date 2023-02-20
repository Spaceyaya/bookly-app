import 'package:bookly/consts.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/home_repo/home_repo_impl.dart';
import 'package:bookly/features/home/presentaion/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentaion/manager/newest_book_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupSeriveLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider
    (
      providers: [
       BlocProvider(create: (context)=> FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks()
       ,),
       BlocProvider(create: (context)=> NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks()),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
