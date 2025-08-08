// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleResponseDto _$ArticleResponseDtoFromJson(Map<String, dynamic> json) {
  return _ArticleResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ArticleResponseDto {
  String get status => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<ArticleDto> get articles => throw _privateConstructorUsedError;

  /// Serializes this ArticleResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticleResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleResponseDtoCopyWith<ArticleResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleResponseDtoCopyWith<$Res> {
  factory $ArticleResponseDtoCopyWith(
          ArticleResponseDto value, $Res Function(ArticleResponseDto) then) =
      _$ArticleResponseDtoCopyWithImpl<$Res, ArticleResponseDto>;
  @useResult
  $Res call({String status, int totalResults, List<ArticleDto> articles});
}

/// @nodoc
class _$ArticleResponseDtoCopyWithImpl<$Res, $Val extends ArticleResponseDto>
    implements $ArticleResponseDtoCopyWith<$Res> {
  _$ArticleResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticleResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleResponseDtoImplCopyWith<$Res>
    implements $ArticleResponseDtoCopyWith<$Res> {
  factory _$$ArticleResponseDtoImplCopyWith(_$ArticleResponseDtoImpl value,
          $Res Function(_$ArticleResponseDtoImpl) then) =
      __$$ArticleResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int totalResults, List<ArticleDto> articles});
}

/// @nodoc
class __$$ArticleResponseDtoImplCopyWithImpl<$Res>
    extends _$ArticleResponseDtoCopyWithImpl<$Res, _$ArticleResponseDtoImpl>
    implements _$$ArticleResponseDtoImplCopyWith<$Res> {
  __$$ArticleResponseDtoImplCopyWithImpl(_$ArticleResponseDtoImpl _value,
      $Res Function(_$ArticleResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticleResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_$ArticleResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleResponseDtoImpl implements _ArticleResponseDto {
  const _$ArticleResponseDtoImpl(
      {required this.status,
      required this.totalResults,
      required final List<ArticleDto> articles})
      : _articles = articles;

  factory _$ArticleResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleResponseDtoImplFromJson(json);

  @override
  final String status;
  @override
  final int totalResults;
  final List<ArticleDto> _articles;
  @override
  List<ArticleDto> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ArticleResponseDto(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  /// Create a copy of ArticleResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleResponseDtoImplCopyWith<_$ArticleResponseDtoImpl> get copyWith =>
      __$$ArticleResponseDtoImplCopyWithImpl<_$ArticleResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _ArticleResponseDto implements ArticleResponseDto {
  const factory _ArticleResponseDto(
      {required final String status,
      required final int totalResults,
      required final List<ArticleDto> articles}) = _$ArticleResponseDtoImpl;

  factory _ArticleResponseDto.fromJson(Map<String, dynamic> json) =
      _$ArticleResponseDtoImpl.fromJson;

  @override
  String get status;
  @override
  int get totalResults;
  @override
  List<ArticleDto> get articles;

  /// Create a copy of ArticleResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleResponseDtoImplCopyWith<_$ArticleResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
