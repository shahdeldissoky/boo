import 'package:book_app/Features/home/presentation/view/home_view.dart';
import 'package:book_app/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/core/utilities/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {

    initSlideAnimation();
   
   navigateToHome();
  }

 

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 1,
        ),
       slidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }


  void initSlideAnimation() {
    super.initState();
    animationController = AnimationController(vsync: this , duration: Duration(seconds:1));
    slidingAnimation = Tween<Offset>(begin: Offset(0,5) , end:Offset.zero).animate(animationController);
    animationController.forward();
       
  }

   void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),
    (){
     Get.to(
       const HomeView(),
       transition: Transition.fade,
       duration: kTransitionDur
        );
    });
  }
}