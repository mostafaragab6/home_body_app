// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_coaches_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecommendedCoachesState<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecommendedCoachesState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RecommendedCoachesState<$T>()';
  }
}

/// @nodoc
class $RecommendedCoachesStateCopyWith<T, $Res> {
  $RecommendedCoachesStateCopyWith(RecommendedCoachesState<T> _,
      $Res Function(RecommendedCoachesState<T>) __);
}

/// @nodoc

class _Initial<T> implements RecommendedCoachesState<T> {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RecommendedCoachesState<$T>.initial()';
  }
}

/// @nodoc

class Loading<T> implements RecommendedCoachesState<T> {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RecommendedCoachesState<$T>.loading()';
  }
}

/// @nodoc

class Success<T> implements RecommendedCoachesState<T> {
  const Success(this.data);

  final T data;

  /// Create a copy of RecommendedCoachesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessCopyWith<T, Success<T>> get copyWith =>
      _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'RecommendedCoachesState<$T>.success(data: $data)';
  }
}

/// @nodoc
abstract mixin class $SuccessCopyWith<T, $Res>
    implements $RecommendedCoachesStateCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) _then) =
      _$SuccessCopyWithImpl;
  @useResult
  $Res call({T data});
}

/// @nodoc
class _$SuccessCopyWithImpl<T, $Res> implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T> _self;
  final $Res Function(Success<T>) _then;

  /// Create a copy of RecommendedCoachesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Success<T>(
      freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class Error<T> implements RecommendedCoachesState<T> {
  const Error(this.error);

  final String error;

  /// Create a copy of RecommendedCoachesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<T, Error<T>> get copyWith =>
      _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'RecommendedCoachesState<$T>.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<T, $Res>
    implements $RecommendedCoachesStateCopyWith<T, $Res> {
  factory $ErrorCopyWith(Error<T> value, $Res Function(Error<T>) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<T, $Res> implements $ErrorCopyWith<T, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T> _self;
  final $Res Function(Error<T>) _then;

  /// Create a copy of RecommendedCoachesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(Error<T>(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetTrainersLoading<T> implements RecommendedCoachesState<T> {
  const GetTrainersLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetTrainersLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RecommendedCoachesState<$T>.getTrainersLoading()';
  }
}

/// @nodoc

class GetTrainersSuccess<T> implements RecommendedCoachesState<T> {
  const GetTrainersSuccess(this.data);

  final GetTrainersResponse data;

  /// Create a copy of RecommendedCoachesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetTrainersSuccessCopyWith<T, GetTrainersSuccess<T>> get copyWith =>
      _$GetTrainersSuccessCopyWithImpl<T, GetTrainersSuccess<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetTrainersSuccess<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'RecommendedCoachesState<$T>.getTrainersSuccess(data: $data)';
  }
}

/// @nodoc
abstract mixin class $GetTrainersSuccessCopyWith<T, $Res>
    implements $RecommendedCoachesStateCopyWith<T, $Res> {
  factory $GetTrainersSuccessCopyWith(GetTrainersSuccess<T> value,
          $Res Function(GetTrainersSuccess<T>) _then) =
      _$GetTrainersSuccessCopyWithImpl;
  @useResult
  $Res call({GetTrainersResponse data});
}

/// @nodoc
class _$GetTrainersSuccessCopyWithImpl<T, $Res>
    implements $GetTrainersSuccessCopyWith<T, $Res> {
  _$GetTrainersSuccessCopyWithImpl(this._self, this._then);

  final GetTrainersSuccess<T> _self;
  final $Res Function(GetTrainersSuccess<T>) _then;

  /// Create a copy of RecommendedCoachesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(GetTrainersSuccess<T>(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetTrainersResponse,
    ));
  }
}

/// @nodoc

class GetTrainersError<T> implements RecommendedCoachesState<T> {
  const GetTrainersError(this.error);

  final String error;

  /// Create a copy of RecommendedCoachesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetTrainersErrorCopyWith<T, GetTrainersError<T>> get copyWith =>
      _$GetTrainersErrorCopyWithImpl<T, GetTrainersError<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetTrainersError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'RecommendedCoachesState<$T>.getTrainersError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetTrainersErrorCopyWith<T, $Res>
    implements $RecommendedCoachesStateCopyWith<T, $Res> {
  factory $GetTrainersErrorCopyWith(
          GetTrainersError<T> value, $Res Function(GetTrainersError<T>) _then) =
      _$GetTrainersErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetTrainersErrorCopyWithImpl<T, $Res>
    implements $GetTrainersErrorCopyWith<T, $Res> {
  _$GetTrainersErrorCopyWithImpl(this._self, this._then);

  final GetTrainersError<T> _self;
  final $Res Function(GetTrainersError<T>) _then;

  /// Create a copy of RecommendedCoachesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetTrainersError<T>(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
