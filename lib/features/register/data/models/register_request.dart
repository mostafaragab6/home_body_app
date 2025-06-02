class RegisterRequest {
  String userName;
  String password;
  String email;

  RegisterRequest({
    required this.email,
    required this.password,
    required this.userName,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': userName,
      'password': password,
      'email': email,
    };
  }
}
