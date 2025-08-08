import 'package:dartz/dartz.dart';
import '../entities/articleEntities/article_entity.dart';
import '../repositories/article_repository.dart';
import 'package:common/constants/failure_class.dart';

class GetArticlesUseCase {
  final ArticleRepository repository;

  GetArticlesUseCase({required this.repository});

  Future<Either<Failure, List<ArticleEntity>>> call() {
    return repository.getAllArticle();
  }
}
