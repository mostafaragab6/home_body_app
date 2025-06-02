import 'package:freezed_annotation/freezed_annotation.dart';

import '../../home/data/models/get_trainers_response.dart';

part 'recommended_coaches_state.freezed.dart';

@Freezed()
class RecommendedCoachesState<T> with _$RecommendedCoachesState<T> {
  const factory RecommendedCoachesState.initial() = _Initial;

  const factory RecommendedCoachesState.loading() = Loading;
  const factory RecommendedCoachesState.success(T data) = Success<T>;
  const factory RecommendedCoachesState.error(String error) = Error;
  const factory RecommendedCoachesState.getTrainersLoading() =
      GetTrainersLoading;
  const factory RecommendedCoachesState.getTrainersSuccess(
      GetTrainersResponse data) = GetTrainersSuccess;
  const factory RecommendedCoachesState.getTrainersError(String error) =
      GetTrainersError;
}
