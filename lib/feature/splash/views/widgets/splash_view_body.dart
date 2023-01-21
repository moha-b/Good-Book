import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_book/feature/home/views/home_view.dart';
import 'package:good_book/feature/splash/views/widgets/sliding_text.dart';
import 'package:good_book/utils/styles.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text("GoodBook",style: Styles.big,textAlign: TextAlign.center,),
        SlidingText(slidingAnimation: _slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    _animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 350 ));
    _slidingAnimation = Tween<Offset>(begin: const Offset(0,15),end: Offset.zero).animate(_animationController);
    _animationController.forward();
  }
  
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),() {
      Get.to(() => const HomeView(),transition: Transition.fade, duration: const Duration(seconds: 1));
    },);
  }
}
