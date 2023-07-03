import 'package:app_login/src/constants/colors.dart';
import 'package:app_login/src/constants/sizes.dart';
import 'package:app_login/src/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/image_strings.dart';
import 'update_profile_screen.dart';
import 'widgets/profile_menu_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          hProfile,
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(hDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(image: AssetImage(tProfileImage))),
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
                        LineAwesomeIcons.alternate_pencil,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                hProfileHeading,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                hProfileSubHeading,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => UpdateProfileScreen()),
                    child: Text(
                      hEditProfile,
                      style: TextStyle(color: HDarkColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: hPrimaryColor,
                        shape: const StadiumBorder(),
                        side: BorderSide.none),
                  )),
              const SizedBox(
                height: 30,
              ),
              Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                  title: hMenu1, icon: LineAwesomeIcons.cog, onPressed: () {}),
              ProfileMenuWidget(
                  title: hMenu2,
                  icon: LineAwesomeIcons.wallet,
                  onPressed: () {}),
              ProfileMenuWidget(
                  title: hMenu3,
                  icon: LineAwesomeIcons.user_check,
                  onPressed: () {}),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                  title: hMenu4, icon: LineAwesomeIcons.info, onPressed: () {}),
              ProfileMenuWidget(
                title: hMenu5,
                endIcon: false,
                textColor: Colors.red,
                icon: LineAwesomeIcons.alternate_sign_out,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
