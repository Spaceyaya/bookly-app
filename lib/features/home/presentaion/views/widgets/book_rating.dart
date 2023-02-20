import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styels.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count, });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 15,
        ),
        const SizedBox(
          width: 6.3,
        ),
         Text(
         rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
        '{$count}',
          style: Styles.textStyle14.copyWith(
              color: const Color(0xff707070), fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
