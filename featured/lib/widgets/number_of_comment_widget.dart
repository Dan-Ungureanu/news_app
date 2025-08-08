import 'dart:math';

import 'package:flutter/material.dart';

class NumberOfCommentWidget extends StatelessWidget {
  const NumberOfCommentWidget({super.key});
  String getRandomComment() {
    final random = Random();

    double value = 10 + random.nextInt(990) + random.nextDouble();
    return '${value.toStringAsFixed(1)}K';
  }

  @override
  Widget build(BuildContext context) {
    final randomText = getRandomComment();
    return Text(
      randomText,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10),
    );
  }
}
