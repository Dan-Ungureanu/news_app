// ignore_for_file: avoid_print

import 'package:di/service_locator.dart';
import 'package:featured/controller/news_controller.dart';
import 'package:featured/pages/news_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  Get.put(sl<NewsController>());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Featured',
      theme: ThemeData.light(),
      home: NewsPage(),
    );
  }
}
