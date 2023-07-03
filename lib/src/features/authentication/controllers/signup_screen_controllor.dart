import 'package:app_login/src/repository/authentication/authentication_repository.dart';
import 'package:app_login/src/repository/user_repository/user_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../models/user_model.dart';
import '../screens/forget_screen/forget_password_otp/forget_password_otp_screen.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  final userRepo = Get.put(UserRepository());
// text field controllers to get the data from textfield
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNO = TextEditingController();

// call this fucntion fromm the design
  void registerUser(String email, String password) {
    AuthenticationRepoController.instance
        .createUserWithEmailAndPassword(email, password);
  }

  void phoneAuthentication(String phoneNO) {
    AuthenticationRepoController.instance.phoneAuthentication(phoneNO);
  }

  Future<void> creatUser(UserModel user) async {
    await userRepo.addUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => OTPScreen());
  }
}
