import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.orangeAccent,
                Colors.yellow,
                Color.fromARGB(255, 157, 221, 214),
                Colors.white,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello Flutter! ~ Nitin',
              style: TextStyle(
                fontSize: 28,
                color: Colors.purple,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
