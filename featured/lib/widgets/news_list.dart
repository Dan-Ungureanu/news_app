// import 'package:domain/domain.dart';
import 'package:domain/entities/article_entity.dart';
import 'package:flutter/material.dart';

class newsList extends StatelessWidget {
  final List<ArticleEntity> articles;

  const newsList(this.articles, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 156,
              margin: const EdgeInsets.only(bottom: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                children: [
                  // ✅ Image from Network
                  Container(
                    width: 156,
                    height: 156,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(article.urlToImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // ✅ Article Content
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            article.title,
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                          // Source and Category
                          Row(
                            children: [
                              const Icon(
                                Icons.newspaper,
                                size: 16,
                                color: Colors.red,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                article.name,
                                style: Theme.of(context).textTheme.bodySmall
                                    ?.copyWith(color: Colors.red, fontSize: 10),
                              ),
                              const SizedBox(width: 16),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                height: 16,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'News', // sau orice alt tip
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(
                                          color: Colors.red,
                                          fontSize: 10,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Stats (mocked for now)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    size: 12,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '381.4k',
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.comment,
                                    size: 12,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '165.3k',
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                              const Icon(Icons.flag, size: 16),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
