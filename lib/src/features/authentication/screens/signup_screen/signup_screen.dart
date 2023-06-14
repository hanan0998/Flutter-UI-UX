import 'package:app_login/src/common%20widget/form/form_header_widget.dart';
import 'package:app_login/src/constants/colors.dart';
import 'package:app_login/src/constants/image_strings.dart';
import 'package:app_login/src/constants/sizes.dart';
import 'package:app_login/src/constants/text_string.dart';
import 'package:app_login/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:app_login/src/features/authentication/screens/signup_screen/signup_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(hDefaultSize),
          child: Column(
            children: [
              FormHeaderWidget(
                  image: hLoginScreeImage,
                  title: hSignUpTitle,
                  subtitle: hSignUpSubTitle),
              SignUpFormWidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("OR".toUpperCase()),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      label: Text("Sign-in with Google",
                          style: Theme.of(context).textTheme.bodyMedium),
                      icon: Image(
                        image: AssetImage(
                          hGoogleImage,
                        ),
                        height: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () => Get.to(() => LoginScreen()),
                    child: Text.rich(
                      TextSpan(
                          text: hAlreadyAccount,
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                                text: " Login",
                                style: TextStyle(
                                  color: Colors.blue,
                                ))
                          ]),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
