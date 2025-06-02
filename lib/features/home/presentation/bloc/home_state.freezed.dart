// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState<$T>()';
  }
}

/// @nodoc
class $HomeStateCopyWith<T, $Res> {
  $HomeStateCopyWith(HomeState<T> _, $Res Function(HomeState<T>) __);
}

/// @nodoc

class _Initial<T> implements HomeState<T> {
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
    return 'HomeState<$T>.initial()';
  }
}

/// @nodoc

class GetTagsLoading<T> implements HomeState<T> {
  const GetTagsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetTagsLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState<$T>.getTagsLoading()';
  }
}

/// @nodoc

class GetTagsSuccess<T> implements HomeState<T> {
  const GetTagsSuccess(this.data);

  final TagsResponse data;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetTagsSuccessCopyWith<T, GetTagsSuccess<T>> get copyWith =>
      _$GetTagsSuccessCopyWithImpl<T, GetTagsSuccess<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetTagsSuccess<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'HomeState<$T>.getTagsSuccess(data: $data)';
  }
}

/// @nodoc
abstract mixin class $GetTagsSuccessCopyWith<T, $Res>
    implements $HomeStateCopyWith<T, $Res> {
  factory $GetTagsSuccessCopyWith(
          GetTagsSuccess<T> value, $Res Function(GetTagsSuccess<T>) _then) =
      _$GetTagsSuccessCopyWithImpl;
  @useResult
  $Res call({TagsResponse data});
}

/// @nodoc
class _$GetTagsSuccessCopyWithImpl<T, $Res>
    implements $GetTagsSuccessCopyWith<T, $Res> {
  _$GetTagsSuccessCopyWithImpl(this._self, this._then);

  final GetTagsSuccess<T> _self;
  final $Res Function(GetTagsSuccess<T>) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(GetTagsSuccess<T>(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as TagsResponse,
    ));
  }
}

/// @nodoc

class GetTagsError<T> implements HomeState<T> {
  const GetTagsError(this.error);

  final String error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetTagsErrorCopyWith<T, GetTagsError<T>> get copyWith =>
      _$GetTagsErrorCopyWithImpl<T, GetTagsError<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetTagsError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'HomeState<$T>.getTagsError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $GetTagsErrorCopyWith<T, $Res>
    implements $HomeStateCopyWith<T, $Res> {
  factory $GetTagsErrorCopyWith(
          GetTagsError<T> value, $Res Function(GetTagsError<T>) _then) =
      _$GetTagsErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$GetTagsErrorCopyWithImpl<T, $Res>
    implements $GetTagsErrorCopyWith<T, $Res> {
  _$GetTagsErrorCopyWithImpl(this._self, this._then);

  final GetTagsError<T> _self;
  final $Res Function(GetTagsError<T>) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(GetTagsError<T>(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ChangePlanSuccess<T> implements HomeState<T> {
  const ChangePlanSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChangePlanSuccess<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState<$T>.changePlanSuccess()';
  }
}

/// @nodoc

class ShowOtherNumbers<T> implements HomeState<T> {
  const ShowOtherNumbers();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ShowOtherNumbers<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState<$T>.showOtherNumbers()';
  }
}

/// @nodoc

class RemoveOtherNumbers<T> implements HomeState<T> {
  const RemoveOtherNumbers();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RemoveOtherNumbers<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState<$T>.removeOtherNumbers()';
  }
}

// dart format on
