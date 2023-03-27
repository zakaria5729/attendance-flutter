// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stores_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoresResponse _$StoresResponseFromJson(Map<String, dynamic> json) {
  return _StoresResponse.fromJson(json);
}

/// @nodoc
mixin _$StoresResponse {
  StoreMeta? get meta => throw _privateConstructorUsedError;
  List<StoreData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoresResponseCopyWith<StoresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoresResponseCopyWith<$Res> {
  factory $StoresResponseCopyWith(
          StoresResponse value, $Res Function(StoresResponse) then) =
      _$StoresResponseCopyWithImpl<$Res, StoresResponse>;
  @useResult
  $Res call({StoreMeta? meta, List<StoreData> data});

  $StoreMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$StoresResponseCopyWithImpl<$Res, $Val extends StoresResponse>
    implements $StoresResponseCopyWith<$Res> {
  _$StoresResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as StoreMeta?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StoreData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $StoreMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StoresResponseCopyWith<$Res>
    implements $StoresResponseCopyWith<$Res> {
  factory _$$_StoresResponseCopyWith(
          _$_StoresResponse value, $Res Function(_$_StoresResponse) then) =
      __$$_StoresResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoreMeta? meta, List<StoreData> data});

  @override
  $StoreMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_StoresResponseCopyWithImpl<$Res>
    extends _$StoresResponseCopyWithImpl<$Res, _$_StoresResponse>
    implements _$$_StoresResponseCopyWith<$Res> {
  __$$_StoresResponseCopyWithImpl(
      _$_StoresResponse _value, $Res Function(_$_StoresResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = null,
  }) {
    return _then(_$_StoresResponse(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as StoreMeta?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StoreData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoresResponse implements _StoresResponse {
  const _$_StoresResponse({this.meta, final List<StoreData> data = const []})
      : _data = data;

  factory _$_StoresResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StoresResponseFromJson(json);

  @override
  final StoreMeta? meta;
  final List<StoreData> _data;
  @override
  @JsonKey()
  List<StoreData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'StoresResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoresResponse &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, meta, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoresResponseCopyWith<_$_StoresResponse> get copyWith =>
      __$$_StoresResponseCopyWithImpl<_$_StoresResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoresResponseToJson(
      this,
    );
  }
}

abstract class _StoresResponse implements StoresResponse {
  const factory _StoresResponse(
      {final StoreMeta? meta, final List<StoreData> data}) = _$_StoresResponse;

  factory _StoresResponse.fromJson(Map<String, dynamic> json) =
      _$_StoresResponse.fromJson;

  @override
  StoreMeta? get meta;
  @override
  List<StoreData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_StoresResponseCopyWith<_$_StoresResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
