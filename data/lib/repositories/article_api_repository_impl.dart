import 'package:common/constants/failure_class.dart';
import 'package:data/datasource/article_api_service_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:data/models/entities/article_dto.dart';
// import 'package:domain/domain.dart';
import 'package:domain/entities/article_entity.dart';
import 'package:domain/repositories/article_repository.dart';
import 'package:dio/dio.dart';

class ArticleApiRepositoryImpl implements ArticleRepository {
  final ArticleApiServiceDto apiService;

  ArticleApiRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, List<ArticleEntity>>> getAllArticle() async {
    try {
      final response = await apiService.getArticle();
      final entities = response.articles.map((dto) => dto.toEntity()).toList();
      return Right(entities);
    } catch (e, stackTrace) {
      if (e is DioException) {
        return Left(Failure.dio(e));
      } else if (e is Exception) {
        return Left(Failure.exception(e, stackTrace));
      } else {
        return Left(Failure.error(e, stackTrace));
      }
    }
  }
}
