class AddProfileRequest {
  String name;
  String mobile;
  String address;
  double height;
  double weight;
  String gender;

  AddProfileRequest({
    required this.address,
    required this.gender,
    required this.height,
    required this.mobile,
    required this.name,
    required this.weight,
  });

  Map<String, dynamic> toJson() {
    return {
      'full_name': name,
      'mobile': mobile,
      'address': address,
      'height': height,
      'weight': weight,
      'gender': gender,
    };
  }
}
