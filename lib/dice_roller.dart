import 'package:flutter/material.dart';
// statefulwidget works with things that change value or image
// statelesswidget work with static things

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
  var activeDiceImage = 'assets/img/dice-2.png';

  void rollDice() {
    setState(() {
      // is a "React.setEffect" type, where you can "re-render" widgets
      activeDiceImage = 'assets/img/dice-4.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
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
