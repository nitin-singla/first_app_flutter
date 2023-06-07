import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Hello Flutter! ~ Nitin',
      style: TextStyle(
        fontSize: 28,
        color: Colors.purple,
      ),
    );
  }
}
