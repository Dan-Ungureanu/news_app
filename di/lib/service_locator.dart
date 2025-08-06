import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void init() {
  sl.registerLazySingleton(() => Dio());

  // sl.registerLazySingleton(() => ArticleApiServiceDto(sl()));

  // sl.registerLazySingleton<ArticleRepository>(
  //   () => ArticleApiRepositoryImpl(apiService: sl()),
  // );

  // sl.registerLazySingleton<GetArticlesUseCase>(() => GetArticlesUseCase(sl()));

  // sl.registerLazySingleton<NewsController>(
  //   () => NewsController(getArticlesUseCase: sl()),
  // );
}
