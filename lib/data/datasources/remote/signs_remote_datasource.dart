import 'package:dartz/dartz.dart';
import 'package:driver_test_apps/core/constant/variables.dart';
import 'package:driver_test_apps/data/models/response/signs_response_model.dart';
import 'package:http/http.dart' as http;

import '../local/auth_local_datasource.dart';

class SignRemoteDataSource {
  final String url = Variables.baseUrl;
  Future<Either<String, SignsResponseModel>> getSignsByCategory(
    String category,
  ) async {
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.get(
      Uri.parse("$url/api/get-signs?category=$category"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${authData.accessToken}"
      },
    );
    if (response.statusCode == 200) {
      return Right(
        SignsResponseModel.fromJson(response.body),
      );
    } else {
      return const Left("Error Get Score By Category");
    }
  }
}
