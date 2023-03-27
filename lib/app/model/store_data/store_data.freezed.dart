// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreData _$StoreDataFromJson(Map<String, dynamic> json) {
  return _StoreData.fromJson(json);
}

/// @nodoc
mixin _$StoreData {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreDataCopyWith<StoreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDataCopyWith<$Res> {
  factory $StoreDataCopyWith(StoreData value, $Res Function(StoreData) then) =
      _$StoreDataCopyWithImpl<$Res, StoreData>;
  @useResult
  $Res call({int id, String? name, String? address});
}

/// @nodoc
class _$StoreDataCopyWithImpl<$Res, $Val extends StoreData>
    implements $StoreDataCopyWith<$Res> {
  _$StoreDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreDataCopyWith<$Res> implements $StoreDataCopyWith<$Res> {
  factory _$$_StoreDataCopyWith(
          _$_StoreData value, $Res Function(_$_StoreData) then) =
      __$$_StoreDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, String? address});
}

/// @nodoc
class __$$_StoreDataCopyWithImpl<$Res>
    extends _$StoreDataCopyWithImpl<$Res, _$_StoreData>
    implements _$$_StoreDataCopyWith<$Res> {
  __$$_StoreDataCopyWithImpl(
      _$_StoreData _value, $Res Function(_$_StoreData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_StoreData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreData implements _StoreData {
  const _$_StoreData({required this.id, this.name, this.address});

  factory _$_StoreData.fromJson(Map<String, dynamic> json) =>
      _$$_StoreDataFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? address;

  @override
  String toString() {
    return 'StoreData(id: $id, name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreDataCopyWith<_$_StoreData> get copyWith =>
      __$$_StoreDataCopyWithImpl<_$_StoreData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreDataToJson(
      this,
    );
  }
}

abstract class _StoreData implements StoreData {
  const factory _StoreData(
      {required final int id,
      final String? name,
      final String? address}) = _$_StoreData;

  factory _StoreData.fromJson(Map<String, dynamic> json) =
      _$_StoreData.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$_StoreDataCopyWith<_$_StoreData> get copyWith =>
      throw _privateConstructorUsedError;
}
