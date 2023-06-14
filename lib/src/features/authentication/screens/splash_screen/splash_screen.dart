import 'package:app_login/src/constants/colors.dart';
import 'package:app_login/src/constants/image_strings.dart';
import 'package:app_login/src/constants/sizes.dart';
import 'package:app_login/src/constants/text_string.dart';
import 'package:app_login/src/common%20widget/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common widget/fade_in_animation/animation_design.dart';
import '../../../../common widget/fade_in_animation/fade_in_animation_model.dart';

// import '../welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashScreenAnimation();
    return Scaffold(
      body: Stack(
        children: [
          // for the splash screen icon
          hfadeInAnimation(
            durationMs: 2000,
            animate: hAnimatePosition(
                topAfter: -10, topBefore: -30, leftAfter: -20, leftBefore: -30),
            child: Image(
              image: AssetImage(hSplashIcon),
            ),
          ),
          // for splash screen appname and app tag line
          hfadeInAnimation(
            durationMs: 2000,
            animate: hAnimatePosition(
                topBefore: 80,
                leftBefore: -80,
                topAfter: 80,
                leftAfter: hDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hAppName,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(hAppTagLine,
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
          ),
          // for splash screen main image
          hfadeInAnimation(
              child: Container(
                width: 480,
                child: Image(
                  image: const AssetImage(hSplashimage),
                  // alignment: Alignment.centerLeft
                ),
              ),
              durationMs: 2300,
              animate: hAnimatePosition(bottomBefore: 0, bottomAfter: 200, leftAfter: -35, leftBefore: -50)),

          //  start work from here
          hfadeInAnimation(
            durationMs: 2400,
            animate: hAnimatePosition(
                bottomBefore: 0,
                bottomAfter: 60,
                rightAfter: hDefaultSize,
                rightBefore: hDefaultSize),
            child: Container(
              width: hSplashContainerSize,
              height: hSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300),
                color: hPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
