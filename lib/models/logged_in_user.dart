class LoggedInUser {
  final String userId;       
  final String firstName;
  final String email;
  final String phoneNumber;
  

  LoggedInUser({
    required this.userId,
    required this.firstName,
    required this.email,
    required this.phoneNumber,
  });

  factory LoggedInUser.fromJson(Map<String, dynamic> json) {
    return LoggedInUser(
      userId: json['user_id']?.toString() ?? '',  
      firstName: json['first_name'] ?? '',
      email: json['email'] ?? '',
      phoneNumber: json['phone_number'] ?? '',
    );
  }
}
