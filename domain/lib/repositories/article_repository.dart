import 'package:dartz/dartz.dart';
// import 'package:domain/domain.dart';
import '../entities/article_entity.dart';
import 'package:common/constants/failure_class.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<ArticleEntity>>> getAllArticle();
}
