import 'dart:math';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  // Listă locală de categorii
  final List<String> categories = [
    'News',
    'Politics',
    'Economy',
    'Technology',
    'Sports',
    'Culture',
    'Health',
  ];

  @override
  Widget build(BuildContext context) {
    final randomCategory = categories[Random().nextInt(categories.length)];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Center(
        child: Text(
          randomCategory,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Colors.red,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
