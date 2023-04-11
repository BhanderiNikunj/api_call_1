class HomeModel {
  HomeModel({
    required this.error,
    required this.data,
  });

  bool error;
  List<Map<String, String>> data;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    error: json["error"],
    data: List<Map<String, String>>.from(json["data"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String>(k, v)))),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "data": List<dynamic>.from(data.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
  };
}
