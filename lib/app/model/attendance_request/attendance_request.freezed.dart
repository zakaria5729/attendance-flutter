// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceRequest _$AttendanceRequestFromJson(Map<String, dynamic> json) {
  return _AttendanceRequest.fromJson(json);
}

/// @nodoc
mixin _$AttendanceRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "request_id")
  String? get requestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceRequestCopyWith<AttendanceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceRequestCopyWith<$Res> {
  factory $AttendanceRequestCopyWith(
          AttendanceRequest value, $Res Function(AttendanceRequest) then) =
      _$AttendanceRequestCopyWithImpl<$Res, AttendanceRequest>;
  @useResult
  $Res call(
      {String? name,
      String? uid,
      double? latitude,
      double? longitude,
      @JsonKey(name: "request_id") String? requestId});
}

/// @nodoc
class _$AttendanceRequestCopyWithImpl<$Res, $Val extends AttendanceRequest>
    implements $AttendanceRequestCopyWith<$Res> {
  _$AttendanceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? uid = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceRequestCopyWith<$Res>
    implements $AttendanceRequestCopyWith<$Res> {
  factory _$$_AttendanceRequestCopyWith(_$_AttendanceRequest value,
          $Res Function(_$_AttendanceRequest) then) =
      __$$_AttendanceRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? uid,
      double? latitude,
      double? longitude,
      @JsonKey(name: "request_id") String? requestId});
}

/// @nodoc
class __$$_AttendanceRequestCopyWithImpl<$Res>
    extends _$AttendanceRequestCopyWithImpl<$Res, _$_AttendanceRequest>
    implements _$$_AttendanceRequestCopyWith<$Res> {
  __$$_AttendanceRequestCopyWithImpl(
      _$_AttendanceRequest _value, $Res Function(_$_AttendanceRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? uid = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? requestId = freezed,
  }) {
    return _then(_$_AttendanceRequest(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceRequest implements _AttendanceRequest {
  const _$_AttendanceRequest(
      {this.name,
      this.uid,
      this.latitude,
      this.longitude,
      @JsonKey(name: "request_id") this.requestId});

  factory _$_AttendanceRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? uid;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  @JsonKey(name: "request_id")
  final String? requestId;

  @override
  String toString() {
    return 'AttendanceRequest(name: $name, uid: $uid, latitude: $latitude, longitude: $longitude, requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, uid, latitude, longitude, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceRequestCopyWith<_$_AttendanceRequest> get copyWith =>
      __$$_AttendanceRequestCopyWithImpl<_$_AttendanceRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceRequestToJson(
      this,
    );
  }
}

abstract class _AttendanceRequest implements AttendanceRequest {
  const factory _AttendanceRequest(
          {final String? name,
          final String? uid,
          final double? latitude,
          final double? longitude,
          @JsonKey(name: "request_id") final String? requestId}) =
      _$_AttendanceRequest;

  factory _AttendanceRequest.fromJson(Map<String, dynamic> json) =
      _$_AttendanceRequest.fromJson;

  @override
  String? get name;
  @override
  String? get uid;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(name: "request_id")
  String? get requestId;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceRequestCopyWith<_$_AttendanceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
