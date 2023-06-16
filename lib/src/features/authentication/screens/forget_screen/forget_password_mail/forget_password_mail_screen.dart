import 'package:app_login/src/common%20widget/form/form_header_widget.dart';
import 'package:app_login/src/constants/image_strings.dart';
import 'package:app_login/src/constants/sizes.dart';
import 'package:app_login/src/constants/text_string.dart';
import 'package:app_login/src/features/authentication/screens/forget_screen/forget_password_otp/forget_password_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(hDefaultSize),
          child: Column(children: [
            const SizedBox(
              height: hDefaultSize * 4,
            ),
            FormHeaderWidget(
              image: hForgetScreenImage,
              title: hForgetPassword,
              subtitle: hForgetPasswordSubTitle,
              crossAxisAlignments: CrossAxisAlignment.center,
              heightBetween: 30,
            ),
            const SizedBox(
              height: hFormHeight,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(hEmail),
                      hintText: hEmail,
                      prefixIcon: Icon(
                        Icons.mail_outline_outlined,
                        size: 35,
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => OTPScreen()),
                        child: Text("Next"))),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
