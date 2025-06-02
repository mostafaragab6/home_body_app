class LoginResponse {
  String? status;
  Data? data;

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  String? accessToken;
  String? refreshToken;
  int? id;
  String? userName;

  Data.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    id = json['user_id'];
    userName = json['username'];
  }
}
