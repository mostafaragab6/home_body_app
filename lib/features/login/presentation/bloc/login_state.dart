import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_body/features/profile/data/models/get_profile_response.dart';

part 'login_state.freezed.dart';

@Freezed()
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = Loading;
  const factory LoginState.success(GetProfileResponse response) = Success;
  const factory LoginState.error(String error) = Error;
  const factory LoginState.getProfileError(String error) = GetProfileError;
}
