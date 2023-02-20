import 'package:bookly/core/utils/assest.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import 'animated_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initAnimationController();
    animatedNavigation();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssestData.logo),
        AnimatedText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void animatedNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTranstionDuration);
      GoRouter.of(context).push('/homeView');
    });
  }

  void initAnimationController() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
