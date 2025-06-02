import 'package:dartz/dartz.dart';
import 'package:home_body/core/error_handler/error_handler.dart';
import 'package:home_body/features/home/data/models/tags/tags_response.dart';

abstract class TagsRepo {
  Future<Either<TagsResponse, ErrorHandler>> getTags();
}
