import 'package:dartz/dartz.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/features/home/data/models/get_trainers_request.dart';
import 'package:home_body/features/home/data/models/get_trainers_response.dart';

abstract class GetTrainersRepo {
  Future<Either<GetTrainersResponse, ErrorHandler>> getTrainers(
      GetTrainersRequest getTrainersRequest);
}
