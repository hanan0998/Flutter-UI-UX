import 'package:app_login/src/constants/sizes.dart';
import 'package:app_login/src/constants/text_string.dart';
import 'package:app_login/src/features/authentication/models/user_model.dart';
import 'package:app_login/src/features/core/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final controller = Get.put(ProfileContorller());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          hEditProfile,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(hDefaultSize),
            child:
                // using FutureBuilder because the data come dynamically in Future
                FutureBuilder(
              future: controller.getUserData(),
              builder: (context, snapshot) {
                // to check connection
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    UserModel userData = snapshot.data as UserModel;
                    return Column(
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child:
                                      Image(image: AssetImage(tProfileImage))),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      // color: hAccentColor.withOpacity(0.1),
                                      color: hPrimaryColor),
                                  child: const Icon(
                                    LineAwesomeIcons.camera,
                                    // weight: 200,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Form(
                            child: Column(
                          children: [
                            TextFormField(
                              initialValue: userData.fullName,
                              decoration: InputDecoration(
                                  label: Text(hFullName),
                                  prefixIcon: Icon(
                                    Icons.person_outline_outlined,
                                    size: 30,
                                  )),
                            ),
                            SizedBox(
                              height: hFormHeight - 10,
                            ),
                            TextFormField(
                              initialValue: userData.email,
                              decoration: InputDecoration(
                                  label: Text(hEmail),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    size: 30,
                                  )),
                            ),
                            SizedBox(
                              height: hFormHeight - 10,
                            ),
                            TextFormField(
                              initialValue: userData.phoneNo,
                              decoration: InputDecoration(
                                  label: Text(hPhoneNumber),
                                  prefixIcon: Icon(
                                    Icons.numbers,
                                    size: 30,
                                  )),
                            ),
                            SizedBox(
                              height: hFormHeight - 10,
                            ),
                            TextFormField(
                              initialValue: userData.password,
                              decoration: InputDecoration(
                                  label: Text(hPassword),
                                  prefixIcon: Icon(
                                    Icons.fingerprint,
                                    size: 30,
                                  )),
                            ),
                            SizedBox(
                              height: hFormHeight,
                            ),
                            SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () =>
                                      Get.to(() => UpdateProfileScreen()),
                                  child: Text(
                                    hEditProfile,
                                    style: TextStyle(color: HDarkColor),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: hPrimaryColor,
                                      shape: const StadiumBorder(),
                                      side: BorderSide.none),
                                )),
                            SizedBox(
                              height: hFormHeight,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: hJoined,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: isDark
                                                ? Colors.white
                                                : Colors.black),
                                        children: [
                                      TextSpan(
                                          text: hJoinedAt,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              color: isDark
                                                  ? Colors.white
                                                  : Colors.black)),
                                    ])),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.redAccent.withOpacity(0.1),
                                        side: BorderSide.none,
                                        elevation: null,
                                        shape: const StadiumBorder(),
                                        foregroundColor: Colors.red),
                                    onPressed: () {},
                                    child: Text(hDelete))
                              ],
                            )
                          ],
                        ))
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else {
                    return Center(
                      child: Text("Something went wrong"),
                    );
                  }
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )),
      ),
    );
  }
}
