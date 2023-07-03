import 'package:app_login/src/features/authentication/controllers/opt_controller.dart';
import 'package:app_login/src/features/authentication/controllers/signup_screen_controllor.dart';
import 'package:app_login/src/features/authentication/models/user_model.dart';
import 'package:app_login/src/features/authentication/screens/forget_screen/forget_password_otp/forget_password_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    // this key is given to form
    final _formKey = GlobalKey<FormState>();
    return Container(
      padding: EdgeInsets.symmetric(vertical: hFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
            // mainAxisSize: ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: InputDecoration(
                    label: Text(hFullName),
                    prefixIcon: Icon(
                      Icons.person_outline_outlined,
                      size: 30,
                    )),
              ),
              SizedBox(
                height: hFormHeight - 20,
              ),
              TextFormField(
                controller: controller.email,
                decoration: InputDecoration(
                    label: Text(hEmail),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 30,
                    )),
              ),
              SizedBox(
                height: hFormHeight - 20,
              ),
              TextFormField(
                controller: controller.phoneNO,
                decoration: InputDecoration(
                    label: Text(hPhoneNumber),
                    prefixIcon: Icon(
                      Icons.numbers,
                      size: 30,
                    )),
              ),
              SizedBox(
                height: hFormHeight - 20,
              ),
              TextFormField(
                controller: controller.password,
                decoration: InputDecoration(
                    label: Text(hPassword),
                    prefixIcon: Icon(
                      Icons.fingerprint,
                      size: 30,
                    )),
              ),
              SizedBox(
                height: hFormHeight - 10,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // SignUpController.instance.registerUser(
                          //     controller.email.text.trim(),
                          //     controller.password.text.trim());
//////////// for phone number authentication
                          // SignUpController.instance.phoneAuthentication(
                          //     controller.phoneNO.text.trim());
                          // Get.to(() => const OTPScreen());

                          //////////// for storing data in the firestore
                          final user = UserModel(
                              fullName: controller.fullName.text.trim(),
                              email: controller.email.text.trim(),
                              phoneNo: controller.phoneNO.text.trim(),
                              password: controller.password.text.trim());
                          SignUpController.instance.creatUser(user);
                        }
                      },
                      child: Text(hSignup.toUpperCase(),
                          style: Theme.of(context).textTheme.displayLarge)))
            ]),
      ),
    );
  }
}
