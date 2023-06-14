// import 'package:flutter/foundation.dart';
import 'package:app_login/src/constants/colors.dart';
// import 'package:app_login/src/constants/image_strings.dart';
// import 'package:app_login/src/constants/text_string.dart';
// import 'package:app_login/src/constants/image_strings.dart';
// import 'package:app_login/src/constants/sizes.dart';
// import 'package:app_login/src/constants/text_string.dart';
// import 'package:app_login/src/features/authentication/models/model_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/widgets.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/onboarding_controller.dart';
// import '../../models/model_on_boarding.dart';
// import 'onboarding_screen_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final obcontroller = OnboardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            onPageChangeCallback: obcontroller.onpageChangeCallback,
            pages: obcontroller.Mypages,
            liquidController: obcontroller.controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60,
              // left: 1,
              child: ElevatedButton(
                onPressed: () => obcontroller.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.black26,
                    ),
                    shape: const CircleBorder(),
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.white),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(color: HDarkColor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ),
              )),
          Positioned(
              top: 40,
              right: 20,
              child: TextButton(
                onPressed: () => obcontroller.skip(), 
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              )),
          Obx(
            () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: obcontroller.currentPage.value,
                  count: 3,
                  effect: WormEffect(
                      dotHeight: 5.0, activeDotColor: Color(0xff272727)),
                )),
          )
        ],
      ),
    );
  }
}
