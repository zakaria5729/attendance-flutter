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
  dynamic get code => throw _privateConstructorUsedError;
  AttendanceData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "app_message")
  String? get appMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "user_message")
  String? get userMessage => throw _privateConstructorUsedError;

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
      {dynamic code,
      AttendanceData? data,
      @JsonKey(name: "app_message") String? appMessage,
      @JsonKey(name: "user_message") String? userMessage});

  $AttendanceDataCopyWith<$Res>? get data;
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
    Object? code = freezed,
    Object? data = freezed,
    Object? appMessage = freezed,
    Object? userMessage = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AttendanceData?,
      appMessage: freezed == appMessage
          ? _value.appMessage
          : appMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      userMessage: freezed == userMessage
          ? _value.userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AttendanceDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
      {dynamic code,
      AttendanceData? data,
      @JsonKey(name: "app_message") String? appMessage,
      @JsonKey(name: "user_message") String? userMessage});

  @override
  $AttendanceDataCopyWith<$Res>? get data;
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
    Object? code = freezed,
    Object? data = freezed,
    Object? appMessage = freezed,
    Object? userMessage = freezed,
  }) {
    return _then(_$_AttendanceResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AttendanceData?,
      appMessage: freezed == appMessage
          ? _value.appMessage
          : appMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      userMessage: freezed == userMessage
          ? _value.userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceResponse implements _AttendanceResponse {
  const _$_AttendanceResponse(
      {this.code,
      this.data,
      @JsonKey(name: "app_message") this.appMessage,
      @JsonKey(name: "user_message") this.userMessage});

  factory _$_AttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceResponseFromJson(json);

  @override
  final dynamic code;
  @override
  final AttendanceData? data;
  @override
  @JsonKey(name: "app_message")
  final String? appMessage;
  @override
  @JsonKey(name: "user_message")
  final String? userMessage;

  @override
  String toString() {
    return 'AttendanceResponse(code: $code, data: $data, appMessage: $appMessage, userMessage: $userMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceResponse &&
            const DeepCollectionEquality().equals(other.code, code) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.appMessage, appMessage) ||
                other.appMessage == appMessage) &&
            (identical(other.userMessage, userMessage) ||
                other.userMessage == userMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(code), data, appMessage, userMessage);

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
          {final dynamic code,
          final AttendanceData? data,
          @JsonKey(name: "app_message") final String? appMessage,
          @JsonKey(name: "user_message") final String? userMessage}) =
      _$_AttendanceResponse;

  factory _AttendanceResponse.fromJson(Map<String, dynamic> json) =
      _$_AttendanceResponse.fromJson;

  @override
  dynamic get code;
  @override
  AttendanceData? get data;
  @override
  @JsonKey(name: "app_message")
  String? get appMessage;
  @override
  @JsonKey(name: "user_message")
  String? get userMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceResponseCopyWith<_$_AttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceData _$AttendanceDataFromJson(Map<String, dynamic> json) {
  return _AttendanceData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "request_id")
  String? get requestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceDataCopyWith<AttendanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDataCopyWith<$Res> {
  factory $AttendanceDataCopyWith(
          AttendanceData value, $Res Function(AttendanceData) then) =
      _$AttendanceDataCopyWithImpl<$Res, AttendanceData>;
  @useResult
  $Res call(
      {int id,
      String name,
      String uid,
      String latitude,
      String longitude,
      @JsonKey(name: "request_id") String? requestId});
}

/// @nodoc
class _$AttendanceDataCopyWithImpl<$Res, $Val extends AttendanceData>
    implements $AttendanceDataCopyWith<$Res> {
  _$AttendanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uid = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceDataCopyWith<$Res>
    implements $AttendanceDataCopyWith<$Res> {
  factory _$$_AttendanceDataCopyWith(
          _$_AttendanceData value, $Res Function(_$_AttendanceData) then) =
      __$$_AttendanceDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String uid,
      String latitude,
      String longitude,
      @JsonKey(name: "request_id") String? requestId});
}

/// @nodoc
class __$$_AttendanceDataCopyWithImpl<$Res>
    extends _$AttendanceDataCopyWithImpl<$Res, _$_AttendanceData>
    implements _$$_AttendanceDataCopyWith<$Res> {
  __$$_AttendanceDataCopyWithImpl(
      _$_AttendanceData _value, $Res Function(_$_AttendanceData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uid = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? requestId = freezed,
  }) {
    return _then(_$_AttendanceData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceData implements _AttendanceData {
  const _$_AttendanceData(
      {required this.id,
      required this.name,
      required this.uid,
      required this.latitude,
      required this.longitude,
      @JsonKey(name: "request_id") this.requestId});

  factory _$_AttendanceData.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceDataFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String uid;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  @JsonKey(name: "request_id")
  final String? requestId;

  @override
  String toString() {
    return 'AttendanceData(id: $id, name: $name, uid: $uid, latitude: $latitude, longitude: $longitude, requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceData &&
            (identical(other.id, id) || other.id == id) &&
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
      Object.hash(runtimeType, id, name, uid, latitude, longitude, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceDataCopyWith<_$_AttendanceData> get copyWith =>
      __$$_AttendanceDataCopyWithImpl<_$_AttendanceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceDataToJson(
      this,
    );
  }
}

abstract class _AttendanceData implements AttendanceData {
  const factory _AttendanceData(
          {required final int id,
          required final String name,
          required final String uid,
          required final String latitude,
          required final String longitude,
          @JsonKey(name: "request_id") final String? requestId}) =
      _$_AttendanceData;

  factory _AttendanceData.fromJson(Map<String, dynamic> json) =
      _$_AttendanceData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get uid;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  @JsonKey(name: "request_id")
  String? get requestId;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceDataCopyWith<_$_AttendanceData> get copyWith =>
      throw _privateConstructorUsedError;
}
