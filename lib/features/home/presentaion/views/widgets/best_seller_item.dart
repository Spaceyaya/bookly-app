import 'package:bookly/consts.dart';
import 'package:bookly/features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styels.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetailsView',extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookItem(imgUrl:bookModel.volumeInfo?.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child:  Text(
                      bookModel.volumeInfo?.title??'',
                      style: const TextStyle(fontFamily: kGtSectraFine, fontSize: 20),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                   bookModel.volumeInfo?.authors![0]?? '' ,
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                       BookRating(
                         rating:
                            bookModel.volumeInfo?.averageRating?.round() ?? 0,
                        count: bookModel.volumeInfo?.ratingsCount ?? 0,),
                    ],
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
