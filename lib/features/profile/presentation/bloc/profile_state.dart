part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

class ProfileInitialState extends ProfileState {}

class GetProfileLoadingState extends ProfileState {}

class GetProfileSuccessState extends ProfileState {
  final GetProfileResponse response;
  GetProfileSuccessState(this.response);
}

class GetProfileErrorState extends ProfileState {
  final String errMessage;
  GetProfileErrorState(this.errMessage);
}

class AddProfileLoadingState extends ProfileState {}

class AddProfileSuccessState extends ProfileState {}

class AddProfileErrorState extends ProfileState {
  final String errMessage;
  AddProfileErrorState(this.errMessage);
}
