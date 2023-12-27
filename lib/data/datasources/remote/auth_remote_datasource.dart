import 'package:dartz/dartz.dart';
import 'package:driver_test_apps/core/constant/variables.dart';
import 'package:driver_test_apps/data/datasources/local/auth_local_datasource.dart';

import 'package:driver_test_apps/data/models/request/login_request_model.dart';
import 'package:driver_test_apps/data/models/request/register_request_model.dart';
import 'package:driver_test_apps/data/models/response/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDataSource {
  final String url = Variables.baseUrl;

  Future<Either<String, AuthResponseModel>> login(
      LoginRequestModel model) async {
    final response = await http.post(
      Uri.parse("$url/api/login"),
      body: model.toJson(),
      headers: {
        "Content-Type": "application/json",
      },
    );
    // ignore: avoid_print
    print(response.body);
    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, AuthResponseModel>> register(
      RegisterRequestModel model) async {
    final response = await http.post(
      Uri.parse("$url/api/register"),
      body: model.toJson(),
      headers: {
        "Content-Type": "application/json",
      },
    );
    // ignore: avoid_print
    print(response.body);
    if (response.statusCode == 200) {
      await Future.delayed(const Duration(seconds: 3));
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, String>> logout() async {
    final data = await AuthLocalDataSource().getAuthData();
    final response = await http.post(
      Uri.parse("$url/api/logout"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${data.accessToken}",
      },
    );
    if (response.statusCode == 200) {
      return Right(response.body);
    } else {
      return Left(response.body);
    }
  }
}
