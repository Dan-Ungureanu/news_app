import 'package:data/datasource/article_api_service_dto.dart';
import 'package:data/repositories/article_api_repository_impl.dart';
import 'package:domain/repositories/article_repository.dart';
import 'package:get_it/get_it.dart';

Future<void> init() async {
  final dataDi = GetIt.instance;

  dataDi.registerLazySingleton<ArticleRepository>(
    () => ArticleApiRepositoryImpl(apiService: dataDi<ArticleApiServiceDto>()),
  );
}
