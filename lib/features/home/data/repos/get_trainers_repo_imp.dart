import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/core/networking/api_service.dart';
import 'package:home_body/features/home/data/apis/home_api_constants.dart';
import 'package:home_body/features/home/data/models/get_trainers_request.dart';
import 'package:home_body/features/home/data/models/get_trainers_response.dart';
import 'package:home_body/features/home/data/repos/get_trainers_repo.dart';

class GetTrainersRepoImp extends GetTrainersRepo {
  final ApiService _apiService;
  GetTrainersRepoImp(this._apiService);
  @override
  Future<Either<GetTrainersResponse, ErrorHandler>> getTrainers(
      GetTrainersRequest getTrainersRequest) async {
    try {
      var response = await _apiService.post(
        endPoint: HomeApiConstants.getTrainersUrl,
        data: getTrainersRequest.toJson(),
      );

      return Left(GetTrainersResponse.fromJson(response));
    } catch (error) {
      return Right(ServerFailure.fromDioException(error as DioException));
    }
  }
}
