import 'package:app_login/src/repository/authentication/authentication_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

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
}
