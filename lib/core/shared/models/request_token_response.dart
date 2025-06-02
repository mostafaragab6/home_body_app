class RequestTokenResponse {
  String? accessToken;

  RequestTokenResponse.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
  }
}
