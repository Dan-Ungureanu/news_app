import 'package:featured/pages/home/news_controller.dart';
import 'package:featured/pages/sections/featured_list_section.dart';
import 'package:featured/pages/sections/news_list_section.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.errorMessage.isNotEmpty) {
            return Center(child: Text(controller.errorMessage.value));
          }

          return RefreshIndicator(
            onRefresh: () async {
              await controller.fetchNews();
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 60),
                  Row(
                    children: [
                      Text(
                        'Featured',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                      ),
                      const Spacer(),
                      seeAllFeaturedButton(),
                    ],
                  ),
                  FeaturedListWidget(controller.newsList),
                  Row(
                    children: [
                      Text(
                        'News',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
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
            ),
          );
        }),
      ),
    );
  }
}
