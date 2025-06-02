import 'package:dartz/dartz.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/core/networking/api_service.dart';
import 'package:home_body/features/home/data/apis/home_api_constants.dart';
import 'package:home_body/features/home/data/models/tags/tags_response.dart';
import 'package:home_body/features/home/data/repos/tags/tags_repo.dart';

class TagsRepoImp extends TagsRepo {
  final ApiService _apiService;
  TagsRepoImp(this._apiService);
  @override
  Future<Either<TagsResponse, ErrorHandler>> getTags() async {
    try {
      var response =
          await _apiService.get(endPoint: HomeApiConstants.getTagsUrl);

      return Left(TagsResponse.fromJson(response));
    } catch (error) {
      return Right(ServerFailure(error.toString()));
    }
  }
}
