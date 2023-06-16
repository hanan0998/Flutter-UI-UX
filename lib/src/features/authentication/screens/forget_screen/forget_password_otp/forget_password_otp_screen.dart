import 'package:app_login/src/constants/sizes.dart';
import 'package:app_login/src/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(hDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
            ),
            Text(
              hOtpTitle,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text(
              hOtpSubTitle,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              hOtpMessage + "support@AbdulHanan.com",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
            SizedBox(
              height: 20.0,
            ),
            OtpTextField(
              numberOfFields: 6,
              filled: true,
              fillColor: Colors.black.withOpacity(0.1),
              fieldWidth: 45.0,
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              onSubmit: (otp) => print("Otp is $otp"),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(hNext.toUpperCase()))),
          ],
        ),
      ),
    );
  }
}
