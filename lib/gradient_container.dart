import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  // const GradientContainer({key}) : super(key: key); // works as well

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.redAccent,
            Colors.orangeAccent,
            Colors.yellow,
            Color.fromARGB(255, 157, 221, 214),
            Colors.white,
          ],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hello Flutter! ~ Nitin'),
      ),
    );
  }
}
