import 'package:app_login/src/features/core/screens/dashboard/dashboardScreen.dart';
import 'package:app_login/src/repository/authentication/authentication_repository.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();
  void verifyOTP(String otp) async {
    var isVerfied = await AuthenticationRepoController.instance.verifyOTP(otp);
    isVerfied ? Get.offAll(() => const DashboardScreen()) : Get.back();
  }
}
