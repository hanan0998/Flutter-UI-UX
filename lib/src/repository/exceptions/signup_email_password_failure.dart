class SignupWithEmailPasswordFailure {
  final String message;
  const SignupWithEmailPasswordFailure(
      [this.message = "An unKnown error occure"]);

// factory constructor which used switch statment to create custom objects
  factory SignupWithEmailPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignupWithEmailPasswordFailure(
            "Please enter strong password.");
      case 'invalid-email':
        return const SignupWithEmailPasswordFailure(
            "Email is not valid or Badly formated.");
      case 'email-already-in-use':
        return const SignupWithEmailPasswordFailure(
            "An account already exists for this email.");
      case 'operation-not-allowed':
        return const SignupWithEmailPasswordFailure(
            "Operation is not allowed. Please Contact support.");
      case 'user-disable':
        return const SignupWithEmailPasswordFailure(
            "This user has been disabled. Please contact support for help");
      default:
        return SignupWithEmailPasswordFailure();
    }
  }
}
