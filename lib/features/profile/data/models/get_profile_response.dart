class GetProfileResponse {
  String? address;
  String? fullName;
  String? gender;
  double? height;
  int? id;
  String? mobile;
  User? user;
  int? userId;
  double? weight;

  GetProfileResponse.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    fullName = json['full_name'];
    gender = json['gender'];
    height = json['height'];
    id = json['id'];
    mobile = json['mobile'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    userId = json['user_id'];
    weight = json['weight'];
  }
}

class User {
  String? createdAt;
  int? id;
  String? username;

  User.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    id = json['id'];
    username = json['username'];
  }
}
