import 'dart:convert';

class GetScoreResponseModel {
  String message;
  int score;
  int correctAnswer;
  int incorrectAnswer;

  GetScoreResponseModel({
    required this.message,
    required this.score,
    required this.correctAnswer,
    required this.incorrectAnswer,
  });

  factory GetScoreResponseModel.fromJson(String str) =>
      GetScoreResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetScoreResponseModel.fromMap(Map<String, dynamic> json) =>
      GetScoreResponseModel(
        message: json["message"],
        score: json["score"],
        correctAnswer: json["CorrectAnswer"],
        incorrectAnswer: json["IncorrectAnswer"],
      );

  Map<String, dynamic> toMap() => {
        "message": message,
        "score": score,
        "CorrectAnswer": correctAnswer,
        "IncorrectAnswer": incorrectAnswer,
      };
}
