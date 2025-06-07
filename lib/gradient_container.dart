import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
//import 'package:first_app/styled_text.dart';

// initialization var
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // 45) Default Constructor Function 
  /*45) Named Parameters
  const GradientContainer({super.key, required this.color1, required this.color2});*/
  //45) Positional Parameters
  const GradientContainer(this.color1, this.color2, {super.key});

  // 46) Multiple Constructor (assgin direct color at function constructor)
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  //Variable Class
  /* 45) variables list values 
  final List<Color> colors;*/
  /* 45) variables individual values */
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          /* 45) Start and end color Gradient */
          /*45) list colors
          colors: colors,*/
          // 45) individual colors
          colors: [
            color1, 
            color2
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
        //StyledText('Hi'),
      ),
    );
  }
}
