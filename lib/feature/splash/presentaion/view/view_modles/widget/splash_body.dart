import 'package:book_app/constans.dart';
import 'package:book_app/core/app_images.dart';
import 'package:book_app/feature/home/presentaion/view/view_models/home_view.dart';
import 'package:book_app/feature/splash/presentaion/view/view_modles/widget/slide_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
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
        SvgPicture.asset(
          Assets.imagesLogo,
          width: 330,
        ),
        const SizedBox(
          height: 6,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  // Functions //
  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(
        const Duration(seconds: 3),
        () => {
              Get.to(() => const HomeView(),
                  transition: Transition.fade, duration: KTranstionDuration)
            });
  }
}
