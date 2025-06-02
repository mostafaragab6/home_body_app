import 'package:dartz/dartz.dart';
import 'package:home_body/features/login/data/models/login_request.dart';
import 'package:home_body/features/login/data/models/login_response.dart';

import '../../../../core/error_handler/error_handler.dart';

abstract class LoginRepo {
  Future<Either<ErrorHandler, LoginResponse>> login(LoginRequest loginRequest);
}
