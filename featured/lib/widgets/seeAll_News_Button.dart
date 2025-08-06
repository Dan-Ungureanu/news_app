import 'package:flutter/material.dart';

class seeAllNewsButton extends StatelessWidget {
  const seeAllNewsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        'See all',
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: Colors.red),
      ),
      onPressed: () => print('Refresh tapped'),
    );
  }
}
