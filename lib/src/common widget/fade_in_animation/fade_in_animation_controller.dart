// import 'package:flutter/material.dart';
// import 'package:get';
import 'package:app_login/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

// import '../screens/onBoarding_screen/onboarding_screen.dart';
// import '../screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController {
  // important to write
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;
  Future startSplashScreenAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));

    animate.value = true;

    await Future.delayed(Duration(milliseconds: 5000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2400));

    Get.offAll(() => WelcomeScreen());
  }

  Future startWelcomeScreenAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));

    animate.value = true;
  }
}
