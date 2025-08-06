// import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:domain/entities/article_entity.dart';

part 'article_dto.freezed.dart';
part 'article_dto.g.dart';

@freezed
class ArticleDto with _$ArticleDto {
  factory ArticleDto({
    required String id,
    required String name,
    required String title,
    required String author,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
    required String content,
  }) = _ArticleDto;

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);
}

extension ArticleDtoX on ArticleDto {
  ArticleEntity toEntity() => ArticleEntity(
    id: id,
    name: name,
    title: title,
    author: author,
    description: description,
    url: url,
    urlToImage: urlToImage,
    publishedAt: publishedAt,
    content: content,
  );
}
