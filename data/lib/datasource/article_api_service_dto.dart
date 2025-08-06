import 'package:data/article_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:common/constants/api_constants.dart';

part 'article_api_service_dto.g.dart'; // fișier generat automat

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ArticleApiServiceDto {
  factory ArticleApiServiceDto(Dio dio, {String baseUrl}) =
      _ArticleApiServiceDto;

  @GET('/everything')
  Future<ArticleResponseDto> getArticle({
    @Query('q') String query = 'apple',
    @Query('from') String from = '2025-08-05',
    @Query('sortBy') String sortBy = 'publishedAt',
    @Query('apiKey') String apiKey = ApiConstants.apiKey,
  });
}
