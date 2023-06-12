import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

const gradientColors = [
  Colors.redAccent,
  Colors.orangeAccent,
  Colors.yellow,
  Color.fromARGB(255, 157, 221, 214),
  Colors.white,
];

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors,
        ),
      ),
    ),
  );
}
