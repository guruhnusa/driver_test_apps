import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:driver_test_apps/core/constant/variables.dart';
import 'package:driver_test_apps/data/models/response/exam_response_model.dart';
import 'package:driver_test_apps/data/models/response/get_score_response_model.dart';
import 'package:driver_test_apps/data/models/response/history_response_model.dart';

import 'package:http/http.dart' as http;

import '../local/auth_local_datasource.dart';

class ExamRemoteDatasource {
  final String url = Variables.baseUrl;

  Future<Either<String, String>> createExam() async {
    final authData = await AuthLocalDataSource().getAuthData();

    final response = await http.post(
      Uri.parse("$url/api/create-exam"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${authData.accessToken}"
      },
    );

    if (response.statusCode == 200) {
      return const Right("Success Create Exams");
    } else {
      return const Left("Error Create Exams");
    }
  }

  Future<Either<String, ExamResponseModel>> getExamByCategory(
      String category) async {
    final authData = await AuthLocalDataSource().getAuthData();

    final response = await http.get(
      Uri.parse("$url/api/get-question-exam?category=$category"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${authData.accessToken}"
      },
    );

    if (response.statusCode == 200) {
      return Right(
        ExamResponseModel.fromJson(response.body),
      );
    } else {
      return const Left("Error Get Exams");
    }
  }

  Future<Either<String, String>> asnwerQuestion(
      String questionId, String answer) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final body = {
      "question_id": questionId,
      "answer": answer,
    };
    final response = await http.post(
      Uri.parse("$url/api/answers"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${authData.accessToken}"
      },
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      return const Right("Success Answer Exams");
    } else {
      return const Left("Error Answer Exams");
    }
  }

  Future<Either<String, HistoryResponseModel>> getAllScore() async {
    final authData = await AuthLocalDataSource().getAuthData();

    final response = await http.get(
      Uri.parse("$url/api/get-all-score"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${authData.accessToken}"
      },
    );
    if (response.statusCode == 200) {
      return Right(
        HistoryResponseModel.fromJson(response.body),
      );
    } else {
      return const Left("Error Get All Score");
    }
  }

  Future<Either<String, GetScoreResponseModel>> getScoreByCategory(
      String category) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.get(
      Uri.parse("$url/api/get-score?category=$category"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${authData.accessToken}"
      },
    );

    if (response.statusCode == 200) {
      return Right(
        GetScoreResponseModel.fromJson(response.body),
      );
    } else {
      return const Left("Error Get Score By Category");
    }
  }
}
