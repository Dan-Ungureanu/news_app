import 'package:flutter/material.dart';

class seeAllFeaturedButton extends StatelessWidget {
  const seeAllFeaturedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print('See all tapped'),
      child: Text(
        'See all',
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: Colors.red),
      ),
    );
  }
}
