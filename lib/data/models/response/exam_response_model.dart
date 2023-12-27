import 'dart:convert';

class ExamResponseModel {
  String message;
  int timer;
  String status;
  List<Question> data;

  ExamResponseModel({
    required this.message,
    required this.timer,
    required this.status,
    required this.data,
  });

  factory ExamResponseModel.fromJson(String str) =>
      ExamResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ExamResponseModel.fromMap(Map<String, dynamic> json) =>
      ExamResponseModel(
        message: json["message"],
        timer: json["timer"],
        status: json["status"],
        data: List<Question>.from(json["data"].map((x) => Question.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "message": message,
        "timer": timer,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Question {
  int id;
  String question;
  String category;
  String image;
  String answerA;
  String answerB;
  String answerC;
  String answerD;

  Question({
    required this.id,
    required this.question,
    required this.category,
    required this.image,
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
  });

  factory Question.fromJson(String str) => Question.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Question.fromMap(Map<String, dynamic> json) => Question(
        id: json["id"],
        question: json["question"],
        category: json["category"],
        image: json["image"],
        answerA: json["answer_a"],
        answerB: json["answer_b"],
        answerC: json["answer_c"],
        answerD: json["answer_d"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "question": question,
        "category": category,
        "image": image,
        "answer_a": answerA,
        "answer_b": answerB,
        "answer_c": answerC,
        "answer_d": answerD,
      };
}
