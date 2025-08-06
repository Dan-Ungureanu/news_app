// lib/feature/home/pages/home_page.dart

import 'package:featured/controller/news_controller.dart';
import 'package:featured/widgets/featured_list.dart';
import 'package:featured/widgets/news_list.dart';
// import 'package:featured/widgets/news_list.dart';
import 'package:featured/widgets/seeAll_Featured_Button.dart';
import 'package:featured/widgets/seeAll_News_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final NewsController controller = Get.find();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
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
                featuredList(controller.newsList),
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
                newsList(controller.newsList),
              ],
            ),
          );
        }),
      ),
    );
  }
}
