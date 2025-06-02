class PlansModel {
  List<PlansData> plansData = [];

  PlansModel.fromJson(List<Map<String, dynamic>> json) {
    for (var element in json) {
      plansData.add(PlansData.fromJson(element));
    }
  }
}

class PlansData {
  String? icon;
  String? desc;
  bool? isSelected;
  String? color;

  PlansData.fromJson(json) {
    color = json['color'];
    icon = json['icon'];
    desc = json['desc'];
    isSelected = json['is_selected'];
  }
}
