class GetTrainersResponse {
  List<Trainers?>? trainers;

  GetTrainersResponse.fromJson(Map<String, dynamic> json) {
    if (json['trainers'] != null && json['trainers'] is List) {
      trainers =
          (json['trainers'] as List).map((e) => Trainers.fromJson(e)).toList();
    } else {
      trainers = [];
    }
  }
}

class Trainers {
  String? address;
  String? bio;
  String? city;
  String? country;
  String? experience;
  String? fullName;
  int? id;
  String? imageUrl;
  String? phone;
  double? price;
  List<Tags>? tags;

  Trainers.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    bio = json['bio'];
    city = json['city'];
    country = json['country'];
    experience = json['experience'];
    fullName = json['full_name'];
    id = json['id'];
    imageUrl = json['image_url'];
    phone = json['mobile'];
    price = json['price'];
    if (json['tags'] != null && json['tags'] is List) {
      tags = (json['tags'] as List).map((e) => Tags.fromJson(e)).toList();
    } else {
      tags = [];
    }
  }
}

class Tags {
  String? desc;
  String? name;
  int? id;

  Tags.fromJson(Map<String, dynamic> json) {
    desc = json['description'];
    id = json['id'];
    name = json['name'];
  }
}
