import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 'assets/images/dice-1.png';

  void changeDice() {
    var randomDice = Random().nextInt(6) + 1; 
    setState(() {
      currentDice = 'assets/images/dice-$randomDice.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currentDice,
          width: 150,
        ),
        TextButton(
            onPressed: changeDice,
            style: TextButton.styleFrom(
                padding: EdgeInsets.only(top: 20),
                foregroundColor: Color.fromARGB(244, 255, 255, 255),
                textStyle: TextStyle(fontSize: 20)),
            child: Text('Roll dice '))
      ],
    );
  }
}
