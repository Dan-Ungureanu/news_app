import 'package:dartz/dartz.dart';
import '../entities/articleEntities/article_entity.dart';
import 'package:common/constants/failure_class.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<ArticleEntity>>> getAllArticle();
}
