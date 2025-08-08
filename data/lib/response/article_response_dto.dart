import 'package:data/models/entities/article_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_response_dto.freezed.dart';
part 'article_response_dto.g.dart';

@freezed
class ArticleResponseDto with _$ArticleResponseDto {
  const factory ArticleResponseDto({
    required String status,
    required int totalResults,
    required List<ArticleDto> articles,
  }) = _ArticleResponseDto;

  factory ArticleResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseDtoFromJson(json);
}
