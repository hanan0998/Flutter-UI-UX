import 'package:app_login/src/features/authentication/models/user_model.dart';
import 'package:app_login/src/repository/authentication/authentication_repository.dart';
import 'package:app_login/src/repository/user_repository/user_repository.dart';
import 'package:get/get.dart';

class ProfileContorller extends GetxController {
  static ProfileContorller get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepoController());
  final _userRepo = Get.put(UserRepository());
  // fetch user email and pass to the userRepository to fetch user record
  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;

    if (email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      print("getUserData else block executed");
      //  Get.snackbar("Error", "Login to Continue");
    }
  }

  Future<List<UserModel>> getAllUser() async {
    return await _userRepo.allUsers();
  }
}
