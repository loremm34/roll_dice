import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

// Alignment? align; объявления без инициализации
// final alignment = Alignment.bottomCenter аналог const короче
// const alignment = Alignment.bottomCenter
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child:  const Center(
        child: DiceRoller()
      ),
    );
  }
}
