class RegisterResponse {
  String? status;
  String? message;

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }
}
