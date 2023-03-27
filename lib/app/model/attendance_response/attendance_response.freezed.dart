// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceResponse _$AttendanceResponseFromJson(Map<String, dynamic> json) {
  return _AttendanceResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendanceResponse {
  dynamic get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceResponseCopyWith<AttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceResponseCopyWith<$Res> {
  factory $AttendanceResponseCopyWith(
          AttendanceResponse value, $Res Function(AttendanceResponse) then) =
      _$AttendanceResponseCopyWithImpl<$Res, AttendanceResponse>;
  @useResult
  $Res call(
      {dynamic success, String? status, String? message, dynamic payload});
}

/// @nodoc
class _$AttendanceResponseCopyWithImpl<$Res, $Val extends AttendanceResponse>
    implements $AttendanceResponseCopyWith<$Res> {
  _$AttendanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceResponseCopyWith<$Res>
    implements $AttendanceResponseCopyWith<$Res> {
  factory _$$_AttendanceResponseCopyWith(_$_AttendanceResponse value,
          $Res Function(_$_AttendanceResponse) then) =
      __$$_AttendanceResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic success, String? status, String? message, dynamic payload});
}

/// @nodoc
class __$$_AttendanceResponseCopyWithImpl<$Res>
    extends _$AttendanceResponseCopyWithImpl<$Res, _$_AttendanceResponse>
    implements _$$_AttendanceResponseCopyWith<$Res> {
  __$$_AttendanceResponseCopyWithImpl(
      _$_AttendanceResponse _value, $Res Function(_$_AttendanceResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_AttendanceResponse(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceResponse implements _AttendanceResponse {
  const _$_AttendanceResponse(
      {this.success, this.status, this.message, this.payload});

  factory _$_AttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceResponseFromJson(json);

  @override
  final dynamic success;
  @override
  final String? status;
  @override
  final String? message;
  @override
  final dynamic payload;

  @override
  String toString() {
    return 'AttendanceResponse(success: $success, status: $status, message: $message, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      status,
      message,
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceResponseCopyWith<_$_AttendanceResponse> get copyWith =>
      __$$_AttendanceResponseCopyWithImpl<_$_AttendanceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceResponseToJson(
      this,
    );
  }
}

abstract class _AttendanceResponse implements AttendanceResponse {
  const factory _AttendanceResponse(
      {final dynamic success,
      final String? status,
      final String? message,
      final dynamic payload}) = _$_AttendanceResponse;

  factory _AttendanceResponse.fromJson(Map<String, dynamic> json) =
      _$_AttendanceResponse.fromJson;

  @override
  dynamic get success;
  @override
  String? get status;
  @override
  String? get message;
  @override
  dynamic get payload;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceResponseCopyWith<_$_AttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
