import 'package:bookly/core/widgets/custom_err_message.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentaion/manager/newest_book_cubit/newest_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is  NewestBooksSuccess) {
  return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: state.books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem( bookModel: state.books[index],),
        );
      });
  } else if(state is NewestBooksFailure)
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
