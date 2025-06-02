class TagsResponse {
  List<Tags>? tags;

  TagsResponse.fromJson(List<dynamic> json) {
    tags = json.map((e) => Tags.fromJson(e)).toList();
  }
}

class Tags {
  int? id;
  String? name;

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
