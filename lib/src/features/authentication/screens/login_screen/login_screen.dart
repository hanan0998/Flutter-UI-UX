// import 'package:app_login/src/constants/image_strings.dart';
import 'package:app_login/src/constants/image_strings.dart';
import 'package:app_login/src/constants/sizes.dart';
import 'package:app_login/src/constants/text_string.dart';
// import 'package:app_login/src/constants/text_string.dart';
import 'package:app_login/src/features/authentication/screens/login_screen/login_form_widget.dart';
import 'package:app_login/src/features/authentication/screens/login_screen/login_header_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(hDefaultSize),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          LoginHeaderWidget(size: size),
          LoginForm(),
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
                onPressed: () {},
                child: Text.rich(
                  TextSpan(
                      text: hDonthaveAccount,
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(
                            text: "SignUp",
                            style: TextStyle(
                              color: Colors.blue,
                            ))
                      ]),
                ),
              )
            ],
          )
        ]),
      )),
    );
  }
}
