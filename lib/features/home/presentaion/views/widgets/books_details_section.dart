import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styels.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child:  CustomBookItem(imgUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ??'',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo?.title ?? '',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.normal),
          textAlign: TextAlign.center ,
           ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? '',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
         BookRating(
          rating: bookModel.volumeInfo?.averageRating ?? 0 ,count: bookModel.volumeInfo?.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
