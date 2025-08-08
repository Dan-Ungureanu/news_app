import 'package:common/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:data/response/article_response_dto.dart'; // DTO-ul tău

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('everything')
  Future<ArticleResponseDto> getArticle({
    @Query('q') String query = 'flutter',
    @Query('from') String from = '2025-07-07',
    @Query('sortBy') String sortBy = 'publishedAt',
    @Query('apiKey') String apiKey = ApiConstants.apiKey,
  });
}
