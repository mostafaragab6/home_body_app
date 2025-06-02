class LoginRequest {
  String userName;
  String password;

  LoginRequest({
    required this.password,
    required this.userName,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': userName,
      'password': password,
    };
  }
}
