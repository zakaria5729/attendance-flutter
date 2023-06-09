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

StoreMeta _$StoreMetaFromJson(Map<String, dynamic> json) {
  return _StoreMeta.fromJson(json);
}

/// @nodoc
mixin _$StoreMeta {
  int get to => throw _privateConstructorUsedError;
  int get from => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreMetaCopyWith<StoreMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreMetaCopyWith<$Res> {
  factory $StoreMetaCopyWith(StoreMeta value, $Res Function(StoreMeta) then) =
      _$StoreMetaCopyWithImpl<$Res, StoreMeta>;
  @useResult
  $Res call(
      {int to,
      int from,
      int total,
      String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "current_page") int currentPage});
}

/// @nodoc
class _$StoreMetaCopyWithImpl<$Res, $Val extends StoreMeta>
    implements $StoreMetaCopyWith<$Res> {
  _$StoreMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? from = null,
    Object? total = null,
    Object? path = null,
    Object? perPage = null,
    Object? lastPage = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreMetaCopyWith<$Res> implements $StoreMetaCopyWith<$Res> {
  factory _$$_StoreMetaCopyWith(
          _$_StoreMeta value, $Res Function(_$_StoreMeta) then) =
      __$$_StoreMetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int to,
      int from,
      int total,
      String path,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "last_page") int lastPage,
      @JsonKey(name: "current_page") int currentPage});
}

/// @nodoc
class __$$_StoreMetaCopyWithImpl<$Res>
    extends _$StoreMetaCopyWithImpl<$Res, _$_StoreMeta>
    implements _$$_StoreMetaCopyWith<$Res> {
  __$$_StoreMetaCopyWithImpl(
      _$_StoreMeta _value, $Res Function(_$_StoreMeta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? from = null,
    Object? total = null,
    Object? path = null,
    Object? perPage = null,
    Object? lastPage = null,
    Object? currentPage = null,
  }) {
    return _then(_$_StoreMeta(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreMeta implements _StoreMeta {
  const _$_StoreMeta(
      {required this.to,
      required this.from,
      required this.total,
      required this.path,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "last_page") required this.lastPage,
      @JsonKey(name: "current_page") required this.currentPage});

  factory _$_StoreMeta.fromJson(Map<String, dynamic> json) =>
      _$$_StoreMetaFromJson(json);

  @override
  final int to;
  @override
  final int from;
  @override
  final int total;
  @override
  final String path;
  @override
  @JsonKey(name: "per_page")
  final int perPage;
  @override
  @JsonKey(name: "last_page")
  final int lastPage;
  @override
  @JsonKey(name: "current_page")
  final int currentPage;

  @override
  String toString() {
    return 'StoreMeta(to: $to, from: $from, total: $total, path: $path, perPage: $perPage, lastPage: $lastPage, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreMeta &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, to, from, total, path, perPage, lastPage, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreMetaCopyWith<_$_StoreMeta> get copyWith =>
      __$$_StoreMetaCopyWithImpl<_$_StoreMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreMetaToJson(
      this,
    );
  }
}

abstract class _StoreMeta implements StoreMeta {
  const factory _StoreMeta(
          {required final int to,
          required final int from,
          required final int total,
          required final String path,
          @JsonKey(name: "per_page") required final int perPage,
          @JsonKey(name: "last_page") required final int lastPage,
          @JsonKey(name: "current_page") required final int currentPage}) =
      _$_StoreMeta;

  factory _StoreMeta.fromJson(Map<String, dynamic> json) =
      _$_StoreMeta.fromJson;

  @override
  int get to;
  @override
  int get from;
  @override
  int get total;
  @override
  String get path;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(name: "last_page")
  int get lastPage;
  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_StoreMetaCopyWith<_$_StoreMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
