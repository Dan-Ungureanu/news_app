import 'dart:math';

import 'package:domain/entities/articleEntities/article_entity.dart';
import 'package:featured/widgets/category_widget.dart';
import 'package:featured/widgets/comment_widget.dart';
import 'package:featured/widgets/like_number_widget.dart';
import 'package:featured/widgets/like_widget.dart';
import 'package:featured/widgets/name_icon_widget.dart';
import 'package:featured/widgets/number_of_comment_widget.dart';
import 'package:featured/widgets/number_of_favorite_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleDetailsPage extends StatefulWidget {
  const ArticleDetailsPage({super.key});

  @override
  State<ArticleDetailsPage> createState() => _ArticleDetailsPageState();
}

class _ArticleDetailsPageState extends State<ArticleDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final ArticleEntity article = Get.arguments as ArticleEntity;
    int number = 0;

    final radomNumber = Random();
    Future<void> onRefresh() async {
      setState(() {
        number = radomNumber.nextInt(5);
      });
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: onRefresh,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 47.0, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_outlined, color: Colors.red),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),

                        child: article.urlToImage != null
                            ? Image.network(
                                article.urlToImage!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 252,
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.asset(
                                    'images/unavailable.png',
                                    fit: BoxFit.contain,
                                    width: double.infinity,
                                    height: 252,
                                  );
                                },
                              )
                            : Image.asset(
                                'images/unavailable.png',
                                fit: BoxFit.contain,
                                width: double.infinity,
                                height: 252,
                              ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    Text(
                      article.title ?? 'No Title',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: CategoryWidget(),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Colors.red,
                              ),
                            ),
                            NumberOfFavoriteWidget(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: LikeWidget(),
                            ),
                            LikeNumberWidget(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: CommentWidget(),
                            ),
                            NumberOfCommentWidget(),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: iconCategories[number],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              Text(
                                textCategory[number],
                                style: Theme.of(context).textTheme.bodySmall
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Text(
                                article.publishedAt != null
                                    ? _getDaysAgoText(article.publishedAt!)
                                    : '',
                                style: Theme.of(
                                  context,
                                ).textTheme.bodySmall?.copyWith(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Image.asset('images/follow.png'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(article.description ?? ''),
                    const SizedBox(height: 10),
                    Text(article.content ?? ''),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            bottom: true,
            left: true,
            right: false,
            maintainBottomViewPadding: false,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/politics.png', width: 80),
                      Image.asset('images/usa.png', width: 80),
                      Image.asset('images/joebiden.png', width: 80),
                      Image.asset('images/news.png', width: 80),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/america.png', width: 80),
                      Image.asset('images/uk.png', width: 80),
                      Image.asset('images/politics.png', width: 80),
                      Image.asset('images/politics.png', width: 80),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _getDaysAgoText(String publishedAt) {
  try {
    final date = DateTime.parse(publishedAt).toLocal();
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return '${difference.inDays} day${difference.inDays == 1 ? '' : 's'} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour${difference.inHours == 1 ? '' : 's'} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute${difference.inMinutes == 1 ? '' : 's'} ago';
    } else {
      return 'Just now';
    }
  } catch (e) {
    return '';
  }
}
