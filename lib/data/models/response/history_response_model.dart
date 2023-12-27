import 'dart:convert';

class HistoryResponseModel {
  String message;
  List<Datum> data;

  HistoryResponseModel({
    required this.message,
    required this.data,
  });

  factory HistoryResponseModel.fromJson(String str) =>
      HistoryResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HistoryResponseModel.fromMap(Map<String, dynamic> json) =>
      HistoryResponseModel(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Datum {
  String category;
  int score;
  String status;
  int correctAnswer;
  int incorrectAnswer;

  Datum({
    required this.category,
    required this.score,
    required this.status,
    required this.correctAnswer,
    required this.incorrectAnswer,
  });

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        category: json["category"],
        score: json["score"],
        status: json["status"],
        correctAnswer: json["correct_answer"],
        incorrectAnswer: json["incorrect_answer"],
      );

  Map<String, dynamic> toMap() => {
        "category": category,
        "score": score,
        "status": status,
        "correct_answer": correctAnswer,
        "incorrect_answer": incorrectAnswer,
      };
}
