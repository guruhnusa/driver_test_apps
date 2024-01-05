import 'dart:convert';

class SignsResponseModel {
  List<Sign> signs;

  SignsResponseModel({
    required this.signs,
  });

  factory SignsResponseModel.fromJson(String str) =>
      SignsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignsResponseModel.fromMap(Map<String, dynamic> json) =>
      SignsResponseModel(
        signs: List<Sign>.from(json["signs"].map((x) => Sign.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "signs": List<dynamic>.from(signs.map((x) => x.toMap())),
      };
}

class Sign {
  int id;
  String title;
  String category;
  String description;
  String image;
  String createdAt;
  String updatedAt;

  Sign({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Sign.fromJson(String str) => Sign.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Sign.fromMap(Map<String, dynamic> json) => Sign(
        id: json["id"],
        title: json["title"],
        category: json["category"],
        description: json["description"],
        // ignore: prefer_interpolation_to_compose_strings
        image: "https://driver.guruhnusa.my.id/storage/public/signs/" +
            json["image"],
        createdAt: json["created_at"] ?? "",
        updatedAt: json["updated_at"] ?? "",
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "category": category,
        "description": description,
        "image": image,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
