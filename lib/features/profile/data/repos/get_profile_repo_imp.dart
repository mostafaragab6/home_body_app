import 'package:dartz/dartz.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/core/networking/api_service.dart';
import 'package:home_body/features/profile/data/apis/profile_api_constants.dart';
import 'package:home_body/features/profile/data/models/get_profile_response.dart';
import 'package:home_body/features/profile/data/repos/get_profile_repo.dart';

class GetProfileRepoImp extends GetProfileRepo {
  final ApiService _apiService;
  GetProfileRepoImp(this._apiService);
  @override
  Future<Either<GetProfileResponse, ErrorHandler>> getProfile() async {
    try {
      var response =
          await _apiService.get(endPoint: ProfileApiConstants.getProfileUrl);
      return Left(GetProfileResponse.fromJson(response));
    } catch (error) {
      print(error.toString());
      return Right(ServerFailure(error.toString()));
    }
  }
}
