class GetTrainersRequest {
  String country;
  String city;
  List<int> tags;

  GetTrainersRequest(
    this.city,
    this.country,
    this.tags,
  );

  Map<String, dynamic> toJson() {
    return {
      'tags': tags,
      'country': country,
      'city': city,
    };
  }
}
