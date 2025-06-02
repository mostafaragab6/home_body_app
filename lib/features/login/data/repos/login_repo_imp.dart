import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/core/networking/api_service.dart';
import 'package:home_body/features/login/data/apis/login_api_constants.dart';
import 'package:home_body/features/login/data/models/login_request.dart';
import 'package:home_body/features/login/data/models/login_response.dart';
import 'package:home_body/features/login/data/repos/login_repo.dart';

class LoginRepoImp extends LoginRepo {
  final ApiService _apiService;
  LoginRepoImp(this._apiService);
  @override
  Future<Either<ErrorHandler, LoginResponse>> login(
      LoginRequest loginRequest) async {
    try {
      var response = await _apiService.post(
        endPoint: LoginApiConstants.loginUrl,
        data: loginRequest.toJson(),
      );
      return Right(LoginResponse.fromJson(response));
    } catch (e) {
      return Left(ServerFailure.fromDioException(e as DioException));
    }
  }
}
