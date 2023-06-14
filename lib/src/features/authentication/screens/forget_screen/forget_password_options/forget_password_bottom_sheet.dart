import 'package:app_login/src/features/authentication/screens/forget_screen/forget_password_mail/forget_password_mail_screen.dart';
import 'package:app_login/src/features/authentication/screens/forget_screen/forget_password_phone/froget_password_phone_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import 'forget_password_option_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> forget_password_buttom_sheet(BuildContext context) {
    return showModalBottomSheet(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        context: context,
        builder: ((context) => Container(
              height: 500,
              padding: EdgeInsets.all(hDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(hForgetPasswordTitle,
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text(
                    hForgetPasswordSubTitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ForgetPasswordButtonWidget(
                    title: hEmail,
                    Subtitle: hResetViaEmail,
                    icon: Icons.mail_outline_outlined,
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(() => ForgetPasswordMailScreen());
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ForgetPasswordButtonWidget(
                    title: hPhoneNumber,
                    Subtitle: hResetViaPhone,
                    icon: Icons.mobile_friendly_rounded,
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(() => ForgetPasswordPhoneScreen());
                    },
                  ),
                ],
              ),
            )));
  }
}
