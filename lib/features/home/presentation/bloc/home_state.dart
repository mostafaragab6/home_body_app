import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/tags/tags_response.dart';

part 'home_state.freezed.dart';

@Freezed()
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.getTagsLoading() = GetTagsLoading;
  const factory HomeState.getTagsSuccess(TagsResponse data) = GetTagsSuccess;
  const factory HomeState.getTagsError(String error) = GetTagsError;

  const factory HomeState.changePlanSuccess() = ChangePlanSuccess;

  const factory HomeState.showOtherNumbers() = ShowOtherNumbers;
  const factory HomeState.removeOtherNumbers() = RemoveOtherNumbers;
}
