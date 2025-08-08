import 'dart:math';

import 'package:domain/entities/articleEntities/article_entity.dart';
import 'package:featured/widgets/category_widget.dart';
import 'package:featured/widgets/comment_widget.dart';
import 'package:featured/widgets/like_widget.dart';
import 'package:featured/widgets/name_icon_widget.dart';
import 'package:featured/widgets/number_of_comment_widget.dart';
import 'package:featured/widgets/number_of_favorite_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class NewsList extends StatelessWidget {
  final RxList<ArticleEntity> newsList;

  const NewsList(this.newsList, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        final article = newsList[index];
        final radomNumber = Random();
        int number = radomNumber.nextInt(5);
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
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 156,
                        height: 156,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            bottomLeft: Radius.circular(16.0),
                          ),
                          image: DecorationImage(
                            image:
                                article.urlToImage != null &&
                                    article.urlToImage!.isNotEmpty
                                ? NetworkImage(article.urlToImage!)
                                : const AssetImage('images/unavailable.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                article.title ?? 'No Title',
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: iconCategories[number],
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    textCategory[number],
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                  const SizedBox(width: 16),
                                  CategoryWidget(),
                                ],
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      LikeWidget(),
                                      const SizedBox(width: 4),
                                      NumberOfFavoriteWidget(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CommentWidget(),
                                      const SizedBox(width: 4),
                                      NumberOfCommentWidget(),
                                    ],
                                  ),
                                  Image.asset('images/flag.png'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
