import 'package:domain/repositories/article_repository.dart';
import 'package:domain/usecases/get_news_use_case.dart';
import 'package:get_it/get_it.dart';

Future<void> init() async {
  final domainDi = GetIt.instance;

  domainDi.registerLazySingleton<GetArticlesUseCase>(
    () => GetArticlesUseCase(repository: domainDi<ArticleRepository>()),
  );
}
