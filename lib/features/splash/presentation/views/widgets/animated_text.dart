import 'package:flutter/cupertino.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read free Book',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
