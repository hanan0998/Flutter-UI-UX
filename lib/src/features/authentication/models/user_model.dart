import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  UserModel(
      {this.id,
      required this.fullName,
      required this.email,
      required this.phoneNo,
      required this.password});

// a function which return the json copy of the class because we can't send data to firestore in this form
  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "PhoneNo": phoneNo,
      "Password": password
    };
  }

// map user fetched data from firebase to usermodel
// when we fetch data from firebase firestore it give us data in from of document snapshot
  factory UserModel.fromDocumentSnapShot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    // document.data() give us the full data white document.get() give us some specific things like email, phoneno, etc.
    final data = document.data()!;
    return UserModel(
        id: document.id,
        fullName: data["FullName"],
        email: data["Email"],
        phoneNo: data["PhoneNo"],
        password: data["Password"]);
  }
}
