import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: hFormHeight - 10),
      child: Form(
        child: Column(
            // mainAxisSize: ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
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
                      onPressed: () {},
                      child: Text(hSignup.toUpperCase(),
                          style: Theme.of(context).textTheme.displayLarge)))
            ]),
      ),
    );
  }
}
