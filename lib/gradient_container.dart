import 'package:flutter/material.dart';

import 'package:first_app/styled_text.dart';

var beginAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  // const GradientContainer({key}) : super(key: key); // works as well

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        // using const BoxDecoration here with var beginAlignment & var endAlignment results in the error - "A value of type 'Null' can't be assigned to a parameter of type 'AlignmentGeometry' in a const constructor.

        gradient: LinearGradient(
          colors: const [
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
        child: StyledText(),
      ),
    );
  }
}
