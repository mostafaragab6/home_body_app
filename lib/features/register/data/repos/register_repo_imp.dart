import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/core/networking/api_service.dart';
import 'package:home_body/features/register/data/apis/register_api_constants.dart';
import 'package:home_body/features/register/data/models/register_request.dart';
import 'package:home_body/features/register/data/models/register_response.dart';
import 'package:home_body/features/register/data/repos/regiser_repo.dart';

class RegisterRepoImp extends RegiserRepo {
  final ApiService _apiService;
  RegisterRepoImp(this._apiService);
  @override
  Future<Either<ErrorHandler, RegisterResponse>> register(
      RegisterRequest registerRequest) async {
    try {
      var response = await _apiService.post(
        endPoint: RegisterApiConstants.registerUrl,
        data: registerRequest.toJson(),
      );

      return Right(RegisterResponse.fromJson(response));
    } catch (error) {
      return Left(ServerFailure.fromDioException(error as DioException));
    }
  }
}
