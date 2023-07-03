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
}
