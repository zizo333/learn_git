import 'package:dartz/dartz.dart';
import 'package:getx_project/models/home/home_model.dart';
import 'package:getx_project/services/api/api_client.dart';
import 'package:getx_project/services/api/api_constants.dart';
import 'package:getx_project/services/api/app_error.dart';

class HomeService {
  final ApiClient _client;

  HomeService(this._client);

  Future<Either<AppError, HomeModel>> fetchHomeData([
    String keyword = '',
  ]) async {
    try {
      final response = await _client.post(
        path: ApiConstants.home,
        body: {
          'keyword': keyword,
        },
      );
      final homeData = response['message']
          ? HomeModel.fromJson(response)
          : HomeModel.noData();
      return Right(homeData);
    } on AppError catch (error) {
      return Left(error);
    }
  }
}
