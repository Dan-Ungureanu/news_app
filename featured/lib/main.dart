// ignore_for_file: avoid_print

import 'package:di/di.dart';
import 'package:featured/pages/news_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Featured',
      theme: ThemeData.light(),
      home: NewsPage(),
    );
  }
}
