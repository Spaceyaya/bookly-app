import 'package:bookly/core/widgets/custom_err_message.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
        itemCount: state.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
              padding:const EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookItem(
                imgUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail ?? '',
              ));
        }),
  );
} else if (state is SimilarBooksFailure)
{
  return CustomErrMessage(errMessage: state.errMessage);
} else 
{
  return const CustomLoadingIndicator();
}
      },
    );
  }
}
