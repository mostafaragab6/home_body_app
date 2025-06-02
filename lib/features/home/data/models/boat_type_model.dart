class BoatTypeModel {
  List<BoatTypeData> boatTypeData = [];

  BoatTypeModel.fromJson(List<Map<String, dynamic>> json) {
    for (var element in json) {
      boatTypeData.add(BoatTypeData.fromJson(element));
    }
  }
}

class BoatTypeData {
  String? img;
  String? name;
  bool? isSelected;

  BoatTypeData.fromJson(json) {
    img = json['img'];
    name = json['name'];
    isSelected = json['is_selected'];
  }
}
