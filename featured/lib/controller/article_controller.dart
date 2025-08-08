import 'package:domain/entities/articleEntities/article_entity.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController {
  ArticleEntity article;

  ArticleController({required this.article});

  @override
  void onInit() {
    super.onInit();

    final args = Get.arguments;
    if (args is ArticleEntity) {
      article = args;
    } else {
      throw Exception('No article data passed to ArticleController');
    }
  }
}
