import 'package:dartz/dartz.dart';
import 'package:driver_test_apps/core/constant/variables.dart';
import 'package:driver_test_apps/data/datasources/local/auth_local_datasource.dart';
import 'package:driver_test_apps/data/models/response/tutorial_video_response_model.dart';
import 'package:http/http.dart' as http;

class TutorialVideoRemoteDatasource {
  final String url = Variables.baseUrl;
  Future<Either<String, TutorialVideoResponseModel>> getAllVideo() async {
    final authData = await AuthLocalDataSource().getAuthData();
    final response = await http.get(
      Uri.parse("$url/api/get-video"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${authData.accessToken}"
      },
    );

    if (response.statusCode == 200) {
      return Right(
        TutorialVideoResponseModel.fromJson(response.body),
      );
    } else {
      return const Left("Error Get Score By Category");
    }
  }
}
