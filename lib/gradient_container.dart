import 'package:flutter/material.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
void rollDice() {}

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  // const GradientContainer({key}) : super(key: key); // works as well

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            const TextButton(
              onPressed: rollDice,
              child: Text('Roll Dice!'),
            ),
          ],
        ),
      ),
    );
  }
}
