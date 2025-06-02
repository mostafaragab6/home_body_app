import 'package:dartz/dartz.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/features/register/data/models/register_request.dart';
import 'package:home_body/features/register/data/models/register_response.dart';

abstract class RegiserRepo {
  Future<Either<ErrorHandler, RegisterResponse>> register(
      RegisterRequest registerRequest);
}
