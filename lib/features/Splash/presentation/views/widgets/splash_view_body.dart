import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../Home/presentation/views/home_view.dart';
import 'sliding_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController ;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsData.klogo),
        const SizedBox(height: 8,),
        SlidingAnimation(slidingAnimation: slidingAnimation)
      ],
    );
  }


  void initSlidingAnimation() {
    animationController = AnimationController(vsync: this , duration: const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: const Offset(0, 5),end: Offset.zero ).animate(animationController);
    animationController.forward();

  }
  Future<Future<dynamic>?> navigateToHome() {
    return Future.delayed(const Duration(seconds: 1) ,
  //   (){} => Get.to(() => const HomeView() ,
  // transition: Transition.fade,
  // duration: kTransitionDuration
  // )
  () => GoRouter.of(context).push('/homeView')
  );
  }

}
