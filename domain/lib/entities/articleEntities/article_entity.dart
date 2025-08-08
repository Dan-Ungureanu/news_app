import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_entity.freezed.dart';

@freezed
class ArticleEntity with _$ArticleEntity {
  factory ArticleEntity({
    required String? title,
    required String? author,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? publishedAt,
    required String? content,
  }) = _ArticleEntity;
}
