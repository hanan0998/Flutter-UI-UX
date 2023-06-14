// import 'package:app_login/src/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../constants/text_string.dart';
import '../forget_screen/forget_password_options/forget_password_bottom_sheet.dart';
// import '../forget_screen/forget_password_options/forget_password_option_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person_outline_outlined,
                size: 30,
              ),
              labelText: hEmail,
              // hintText: hEmail,
              border: OutlineInputBorder(
                gapPadding: 4,
              ),
              // constraints: BoxConstraints()
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.fingerprint,
                size: 30,
              ),
              labelText: hPassword,
              // hintText: hEmail,
              border: OutlineInputBorder(
                gapPadding: 4,
              ),
              // constraints: BoxConstraints()

              suffixIcon: IconButton(
                icon: Icon(
                  Icons.remove_red_eye_sharp,
                  size: 28,
                ),
                onPressed: null,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.forget_password_buttom_sheet(context);
                  },
                  child: Text(hForgetPassword,
                      style: Theme.of(context).textTheme.bodyLarge))),
          SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    hLogin.toUpperCase(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ))),
        ],
      ),
    ));
  }
}
