part of 'continue_with_social_cubit.dart';

@immutable
sealed class ContinueWithSocialState {}

class ContinueWithSocialInitial extends ContinueWithSocialState {}

class ContinueWithGoogleLoading extends ContinueWithSocialState {}

class ContinueWithGoogleSuccess extends ContinueWithSocialState {}

class ContinueWithGoogleError extends ContinueWithSocialState {}
