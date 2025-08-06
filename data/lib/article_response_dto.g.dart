// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleResponseDtoImpl _$$ArticleResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleResponseDtoImpl(
      status: json['status'] as String,
      totalResults: (json['totalResults'] as num).toInt(),
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ArticleResponseDtoImplToJson(
        _$ArticleResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
