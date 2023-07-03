// to store all the queries related to firestore

import 'package:app_login/src/features/authentication/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;

  // METHOD TO ADD THE USER IN THE FIRESTORE
  addUser(UserModel user)

  // as we are working with cloud base this should be await
  async {
    // is is the collection name which we created in the firestore

    // .add function to send the data and the user.toJson() is to convert the model class data in json format
    await _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(() => Get.snackbar(
            "Success", "Your Account has been created.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
            colorText: Colors.green))
        .catchError((error, stackstrace) {
      Get.snackbar("Error", "Something went wrong. Try Again.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green.withOpacity(0.1),
          colorText: Colors.green);
      print(error.toString());
    });
  }
}
