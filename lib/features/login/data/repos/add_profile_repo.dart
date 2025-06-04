import 'package:dartz/dartz.dart';
import 'package:home_body/core/error_handler/error_handler.dart';

import '../models/add_profile_request.dart';

abstract class AddProfileRepo {
  Future<Either<String, ErrorHandler>> addProfile(
      AddProfileRequest addProfileRequest);
}
