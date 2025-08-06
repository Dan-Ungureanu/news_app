import 'package:common/constants/api_constants.dart';
import 'package:data/datasource/article_api_service_dto.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

Future<void> init() async {
  final dataDi = GetIt.instance;
  var mainOptions = BaseOptions(
    connectTimeout: Duration(seconds: 2),
    receiveTimeout: Duration(seconds: 3),
    sendTimeout: Duration(seconds: 2),
    baseUrl: ApiConstants.baseUrl,
  );
  var mainClient = Dio(mainOptions);

  mainClient.interceptors.add(
    LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
      responseBody: true,
    ),
  );
  dataDi.registerLazySingleton(() => ArticleApiServiceDto(mainClient));
}
