// import 'package:app_login/src/constants/colors.dart';
import 'package:app_login/src/common%20widget/fade_in_animation/animation_design.dart';
import 'package:app_login/src/common%20widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:app_login/src/constants/colors.dart';
import 'package:app_login/src/constants/image_strings.dart';
import 'package:app_login/src/constants/sizes.dart';
import 'package:app_login/src/constants/text_string.dart';
import 'package:app_login/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common widget/fade_in_animation/fade_in_animation_controller.dart';
import '../signup_screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    var isDarkMode = brightness == Brightness.dark;

    final controller = Get.put(FadeInAnimationController());
    controller.startWelcomeScreenAnimation();
    return Scaffold(
        backgroundColor: isDarkMode ? hSecondaryColor : hPrimaryColor,
        body: Stack(
          children: [
            hfadeInAnimation(
              durationMs: 1200,
              animate: hAnimatePosition(
                  bottomBefore: -100,
                  bottomAfter: 0,
                  rightAfter: 0,
                  rightBefore: 0,
                  topAfter: 0,
                  topBefore: 0,
                  leftAfter: 0,
                  leftBefore: 0),
              child: Container(
                padding: EdgeInsets.all(hDefaultSize),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage(hWelcomeScreenImage),
                        fit: BoxFit.contain,
                        height: height * 0.6,
                      ),
                      Column(
                        children: [
                          Text(hWelcomeScreenTitle,
                              style: Theme.of(context).textTheme.headlineSmall),
                          Text(
                            hWelcomeScreenSubtitle,
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: OutlinedButton(
                            onPressed: () => Get.to(LoginScreen()),
                            child: Text(hLogin.toUpperCase()),
                          )),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                              child: ElevatedButton(
                            onPressed: () => Get.to(SignUpScreen()),
                            child: Text(hSignup.toUpperCase()),
                          )),
                        ],
                      ),
                    ]),
              ),
            )
          ],
        ));
  }
}
