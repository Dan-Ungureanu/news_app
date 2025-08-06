// ignore_for_file: depend_on_referenced_packages

import 'package:data/datasource/article_api_service_dto.dart';
import 'package:data/repositories/article_api_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:domain/repositories/article_repository.dart';
import 'package:domain/usecases/get_news_use_case.dart';
import 'package:featured/controller/news_controller.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void init() {
  sl.registerLazySingleton(() => Dio());

  sl.registerLazySingleton(() => ArticleApiServiceDto(sl()));

  sl.registerLazySingleton<ArticleRepository>(
    () => ArticleApiRepositoryImpl(apiService: sl()),
  );

  sl.registerLazySingleton<GetArticlesUseCase>(() => GetArticlesUseCase(sl()));

  sl.registerLazySingleton<NewsController>(
    () => NewsController(getArticlesUseCase: sl()),
  );
}
