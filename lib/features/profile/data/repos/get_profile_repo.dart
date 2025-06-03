import 'package:dartz/dartz.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/features/profile/data/models/get_profile_response.dart';

abstract class GetProfileRepo {
  Future<Either<GetProfileResponse, ErrorHandler>> getProfile();
}
