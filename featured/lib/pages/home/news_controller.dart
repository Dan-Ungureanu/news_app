import 'package:domain/usecases/get_news_use_case.dart';
import 'package:get/get.dart';
import 'package:domain/entities/articleEntities/article_entity.dart';
import 'package:get_it/get_it.dart';

class NewsController extends GetxController {
  final GetArticlesUseCase getArticlesUseCase = GetIt.instance.get();

  var newsList = <ArticleEntity>[].obs;
  var isLoading = true.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchNews();
  }

  Future<void> fetchNews() async {
    isLoading.value = true;
    final result = await getArticlesUseCase.call();

    result.fold(
      (failure) {
        // Dacă e eroare, salvezi mesajul în errorMessage
        errorMessage.value = failure.toString();
        newsList.clear();
      },
      (articles) {
        // Dacă avem lista de articole, o asignăm în newsList
        newsList.assignAll(articles);
        errorMessage.value = '';
      },
    );

    isLoading.value = false;
  }
}
