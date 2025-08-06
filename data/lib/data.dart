// // import 'package:dio/dio.dart';
// // import 'package:domain/domain.dart';
// // import 'package:retrofit/retrofit.dart';

// // part 'data.g.dart';
// // // part 'data.freezed.dart';

// // @RestApi(baseUrl: '')
// // class ArticleApiService {
// //   factory ArticleApiService(Dio dio, {String baseUrl}) = _ArticleApiService;

// //   @GET('/article')
// //   Future<List<ArticleEntity>> getArticle();
// // }
// import 'package:dio/dio.dart';
// import 'package:retrofit/http.dart';
// import 'package:data/models/article_dto.dart';
// import 'package:common/constants/api_constants.dart';
// import 'package:retrofit/retrofit.dart';
// import 'package:build_runner/build_runner.dart';

// part 'data.g.dart'; // fișier generat automat

// @RestApi(baseUrl: ApiConstants.baseUrl)
// class Data {
//   factory Data(Dio dio, {String baseUrl}) = _Data;

//   @GET('/everything')
//   Future<List<ArticleDto>> getArticle({
//     @Query('q') String query = 'flutter',
//     @Query('from') String from = '2025-07-04',
//     @Query('sortBy') String sortBy = 'publishedAt',
//     @Query('apiKey') String apiKey = ApiConstants.apiKey,
//   });
// }
