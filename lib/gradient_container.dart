import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

//initialization var
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//Building Custom Widget
class GradientContainer extends StatelessWidget { 
//extends to get material from StatelessWidget classes

  //Constructor Functions 2 ways (take key from super class)
  //1- Initializer list assignment - GradientContainer({key}): super(key: key);
  //2- Shorthand constructor - GradientContainer({super.key});

  /* 45) named parameters in List values
  const GradientContainer({super.key, required this.colors});*/
  /* 45) named parameters - in Individual values*/
  const GradientContainer(this.color1, this.color2, {super.key}); 

  // 46) Multiple Constructor (assign direct color at function constructor)
  const GradientContainer.purple({super.key}) : color1 = Colors.deepPurple, color2 = Colors.indigo;


  //Variable Class
  /* 45) variables individual values*/
  final Color color1;
  final Color color2;
  /* 45) variables List values
  final List<Color> colors;*/

  //Build Widget for represented UI 
   @override
   Widget build(context) {
    return Container( 
      decoration: BoxDecoration(
        gradient: LinearGradient(
          /* 45) list colors
          colors: colors,*/
          /*45) start and end color Gradient*/
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
      ),
    );
   } //build should return a widget
}