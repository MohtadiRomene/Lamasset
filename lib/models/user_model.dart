class UserModel {
  final String firstName;
  final String email;
  final String phoneNumber;
  final String password;
  final String confirmPassword;

  UserModel({
    required this.firstName,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'email': email,
      'phone_number': phoneNumber,
      'password': password,
      'confirm_password': confirmPassword,
    };
  }
}
