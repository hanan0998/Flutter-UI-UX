import 'package:app_login/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:app_login/src/features/core/screens/dashboard/dashboardScreen.dart';
import 'package:app_login/src/repository/exceptions/signup_email_password_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepoController extends GetxController {
  static AuthenticationRepoController get instance => Get.find();
// this is same as the above line where we make the instance and use in other widget
  final _auth = FirebaseAuth.instance;
  // make the variable of User datatype and Rx to observe the changes in it'
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    // to get the user current state whether it is login or logout
    firebaseUser = Rx<User?>(_auth.currentUser);
    // to see the changes
    firebaseUser.bindStream(_auth.userChanges());

    // ever method is used to run function when user current state changes
    ever(firebaseUser, _setInitialScreen);
    // it take variable of User Datatype
    // ever(listener, (callback) => null)
  }

// making method to pass to ever method
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => WelcomeScreen())
        : Get.offAll(() => DashboardScreen());
  }

  //  method to make the user
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      firebaseUser.value != null
          ? Get.offAll(() => DashboardScreen())
          : Get.to(() => WelcomeScreen());
      // this is to handle error throw by firebase
    } on FirebaseAuthException catch (error) {
      final ex = SignupWithEmailPasswordFailure.code(error.code);
      print("Firebase auth exception - ${ex.message}");
      throw ex;
    } catch (error) {
      const ex = SignupWithEmailPasswordFailure();
      print("Exception - ${ex.message}");
      throw ex;
    }
  }

  //  method to login the user
  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (e) {}
  }

  // method to logout the user
  Future<void> logout() async => await _auth.signOut();
}
