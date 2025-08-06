import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:domain/entities/article_entity.dart';

class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ArticleEntity article = Get.arguments as ArticleEntity;

    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article.urlToImage != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(article.urlToImage!),
              )
            else
              Image.asset('images/no-image.png'),

            const SizedBox(height: 16),

            Text(
              article.title ?? 'No Title',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text(
              article.author! ?? 'No Author',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 10),
            Text(article.description ?? ''),
            const SizedBox(height: 10),
            Text(article.content ?? ''),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
