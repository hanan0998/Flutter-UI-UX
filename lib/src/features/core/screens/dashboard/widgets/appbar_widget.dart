import 'package:app_login/src/repository/authentication/authentication_repository.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_string.dart';

class ImplementedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ImplementedAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: Icon(
        Icons.menu,
        // weight: 5,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        hAppName,
        // textAlign: TextAlign.center,
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: HCardbgColor,
          ),
          child: IconButton(
            onPressed: () {
              AuthenticationRepoController.instance.logout();
            },
            icon: Image(image: AssetImage(hUserProfileImage)),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
