import 'package:dartz/dartz.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/core/networking/api_service.dart';
import 'package:home_body/features/profile/data/apis/profile_api_constants.dart';

import '../models/add_profile_request.dart';
import 'add_profile_repo.dart';

class AddProfileRepoImp extends AddProfileRepo {
  final ApiService _apiService;
  AddProfileRepoImp(this._apiService);
  @override
  Future<Either<String, ErrorHandler>> addProfile(
      AddProfileRequest addProfileRequest) async {
    try {
      await _apiService.post(
        endPoint: ProfileApiConstants.getProfileUrl,
        data: addProfileRequest.toJson(),
      );

      return const Left('Success');
    } catch (error) {
      print(error);
      return Right(ServerFailure(error.toString()));
    }
  }
}
