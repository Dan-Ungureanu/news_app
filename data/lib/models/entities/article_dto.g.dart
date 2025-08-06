// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleDtoImpl _$$ArticleDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArticleDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$ArticleDtoImplToJson(_$ArticleDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };
