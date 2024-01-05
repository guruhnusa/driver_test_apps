import 'dart:convert';

class TutorialVideoResponseModel {
  List<Video> videos;

  TutorialVideoResponseModel({
    required this.videos,
  });

  factory TutorialVideoResponseModel.fromJson(String str) =>
      TutorialVideoResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TutorialVideoResponseModel.fromMap(Map<String, dynamic> json) =>
      TutorialVideoResponseModel(
        videos: List<Video>.from(json["videos"].map((x) => Video.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "videos": List<dynamic>.from(videos.map((x) => x.toMap())),
      };
}

class Video {
  int id;
  String title;
  String description;
  String videoUrl;
  String createdAt;
  String updatedAt;

  Video({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Video.fromJson(String str) => Video.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Video.fromMap(Map<String, dynamic> json) => Video(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        videoUrl: json["video_url"],
        createdAt: json["created_at"] ?? "",
        updatedAt: json["updated_at"] ?? "",
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "description": description,
        "video_url": videoUrl,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
