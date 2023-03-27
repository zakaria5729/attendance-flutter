// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoreState {
  String? get error => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  List<StoreData> get data => throw _privateConstructorUsedError;
  bool get isFetchingNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreStateCopyWith<StoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreStateCopyWith<$Res> {
  factory $StoreStateCopyWith(
          StoreState value, $Res Function(StoreState) then) =
      _$StoreStateCopyWithImpl<$Res, StoreState>;
  @useResult
  $Res call(
      {String? error,
      int pageNo,
      bool isLoading,
      bool isLastPage,
      List<StoreData> data,
      bool isFetchingNext});
}

/// @nodoc
class _$StoreStateCopyWithImpl<$Res, $Val extends StoreState>
    implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? pageNo = null,
    Object? isLoading = null,
    Object? isLastPage = null,
    Object? data = null,
    Object? isFetchingNext = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StoreData>,
      isFetchingNext: null == isFetchingNext
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreStateCopyWith<$Res>
    implements $StoreStateCopyWith<$Res> {
  factory _$$_StoreStateCopyWith(
          _$_StoreState value, $Res Function(_$_StoreState) then) =
      __$$_StoreStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      int pageNo,
      bool isLoading,
      bool isLastPage,
      List<StoreData> data,
      bool isFetchingNext});
}

/// @nodoc
class __$$_StoreStateCopyWithImpl<$Res>
    extends _$StoreStateCopyWithImpl<$Res, _$_StoreState>
    implements _$$_StoreStateCopyWith<$Res> {
  __$$_StoreStateCopyWithImpl(
      _$_StoreState _value, $Res Function(_$_StoreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? pageNo = null,
    Object? isLoading = null,
    Object? isLastPage = null,
    Object? data = null,
    Object? isFetchingNext = null,
  }) {
    return _then(_$_StoreState(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StoreData>,
      isFetchingNext: null == isFetchingNext
          ? _value.isFetchingNext
          : isFetchingNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StoreState implements _StoreState {
  const _$_StoreState(
      {this.error,
      this.pageNo = 1,
      this.isLoading = false,
      this.isLastPage = false,
      final List<StoreData> data = const [],
      this.isFetchingNext = false})
      : _data = data;

  @override
  final String? error;
  @override
  @JsonKey()
  final int pageNo;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLastPage;
  final List<StoreData> _data;
  @override
  @JsonKey()
  List<StoreData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isFetchingNext;

  @override
  String toString() {
    return 'StoreState(error: $error, pageNo: $pageNo, isLoading: $isLoading, isLastPage: $isLastPage, data: $data, isFetchingNext: $isFetchingNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isFetchingNext, isFetchingNext) ||
                other.isFetchingNext == isFetchingNext));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, pageNo, isLoading,
      isLastPage, const DeepCollectionEquality().hash(_data), isFetchingNext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreStateCopyWith<_$_StoreState> get copyWith =>
      __$$_StoreStateCopyWithImpl<_$_StoreState>(this, _$identity);
}

abstract class _StoreState implements StoreState {
  const factory _StoreState(
      {final String? error,
      final int pageNo,
      final bool isLoading,
      final bool isLastPage,
      final List<StoreData> data,
      final bool isFetchingNext}) = _$_StoreState;

  @override
  String? get error;
  @override
  int get pageNo;
  @override
  bool get isLoading;
  @override
  bool get isLastPage;
  @override
  List<StoreData> get data;
  @override
  bool get isFetchingNext;
  @override
  @JsonKey(ignore: true)
  _$$_StoreStateCopyWith<_$_StoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
