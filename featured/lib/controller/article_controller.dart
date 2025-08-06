import 'package:get/get.dart';
import 'package:domain/entities/article_entity.dart';

class ArticleController extends GetxController {
  ArticleEntity article;

  ArticleController({required this.article});

  @override
  void onInit() {
    super.onInit();

    // Preluăm articolul transmis prin Get.arguments
    final args = Get.arguments;
    if (args is ArticleEntity) {
      article = args;
    } else {
      throw Exception('No article data passed to ArticleController');
    }
  }
}
