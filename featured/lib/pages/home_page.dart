// lib/feature/home/pages/home_page.dart

import 'package:featured/controller/article_controller.dart';
import 'package:featured/controller/news_controller.dart';
import 'package:featured/widgets/featured_list.dart';
import 'package:featured/widgets/news_list.dart';
// import 'package:featured/widgets/news_list.dart';
import 'package:featured/widgets/seeAll_Featured_Button.dart';
import 'package:featured/widgets/seeAll_News_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NewsController get controller => Get.find();

  @override
  void initState() {
    super.initState();
    Get.put(NewsController());
    // Get.put(ArticleController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text(''), backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.errorMessage.isNotEmpty) {
            return Center(child: Text(controller.errorMessage.value));
          }

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 60),
                Row(
                  children: [
                    Text(
                      'Featured',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    seeAllFeaturedButton(),
                  ],
                ),
                FeaturedList(controller.newsList),
                Row(
                  children: [
                    Text(
                      'News',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    seeAllNewsButton(),
                  ],
                ),
                NewsList(controller.newsList),
              ],
            ),
          );
        }),
      ),
    );
  }
}
