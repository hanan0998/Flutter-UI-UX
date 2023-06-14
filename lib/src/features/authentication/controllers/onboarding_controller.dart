import 'package:app_login/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_string.dart';
import '../models/model_on_boarding.dart';
import '../screens/onBoarding_screen/onboarding_screen_widget.dart';

class OnboardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;
  int num = 0;

  final Mypages = [
    onBoardingScreenWidget(
        model: OnBoardingModel(
            bgcolor: hOnBoardingPage12Color,
            counter: hOnBoardingCounter1,
            image: hOnBoardingImage1,
            subtitle: hOnBoardingSubtitle1,
            title: hOnBoardingTitle1)),
    onBoardingScreenWidget(
        model: OnBoardingModel(
            bgcolor: hOnBoardingPage2Color,
            counter: hOnBoardingCounter2,
            image: hOnBoardingImage2,
            subtitle: hOnBoardingSubtitle2,
            title: hOnBoardingTitle2)),
    onBoardingScreenWidget(
        model: OnBoardingModel(
            bgcolor: hOnBoardingPage3Color,
            counter: hOnBoardingCounter3,
            image: hOnBoardingImage3,
            subtitle: hOnBoardingSubtitle3,
            title: hOnBoardingTitle3)),
  ];

  void onpageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  animateToNextSlide() {
    num += 1;
    if(num == 3){
Get.to( () =>  WelcomeScreen());
    }

    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
    
  }

  skip() { 
    
    // controller.jumpToPage(page: 2);
    Get.to( () => WelcomeScreen());
  
  }
}

