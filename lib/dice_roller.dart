import 'dart:math';
import 'package:flutter/material.dart';
// statefulwidget works with widgets that change value or image.
// statelesswidget work with static widgets.

final randomizer = Random();

// this one always works with two classes
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key}); // can use const only in this class

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// this class has to start with _Underline and are private class
// that cannot be access from outside of here, even if you import
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      // is a "React.setEffect" type, where you can "re-render" widgets
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/img/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 16,
              left: 20,
              right: 20,
            ),
          ),
          child: const Text(
            'Roll the dice',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
