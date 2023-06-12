import 'package:flutter/material.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});
  // const GradientContainer({key}) : super(key: key); // works as well

  final List<Color> colors;
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-2.png';
    print("checking if rollDice() is being run or not");
  }

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
                padding: const EdgeInsets.only(
                  top: 20,
                ),
              ),
              child: const Text('Roll Dice!'),
            ),
          ],
        ),
      ),
    );
  }
}
