

import 'package:bookly/core/utils/styels.dart';
import 'package:flutter/cupertino.dart';

class CustomErrMessage extends StatelessWidget {
  const CustomErrMessage({super.key, required this.errMessage});
final String errMessage;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(errMessage,
      style: Styles.textStyle18,
      textAlign: TextAlign.center,
      ),
    );
  }
}