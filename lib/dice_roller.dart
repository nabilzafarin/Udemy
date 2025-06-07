// 50) Stateful Widget
import 'package:flutter/material.dart';
// 51) Generate Random Number
import 'dart:math';

// 52) final var for Object (once create object and reuse)
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  //constructor function
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
    // createState - Does not take a value but actually returns a value.
  }
}

class _DiceRollerState extends State<DiceRoller> {

   // 49) How To NOT build interact widgets
   /* 51) Ways 1 - Random Constructor (math)
  var activeDiceImage = 'assets/images/dice-2.png';*/ //link default
  // 52) Ways 2 - Random Constructor (math)
  var currentDiceRoll = 2;// default num value

  // 47) Named Function
  void rollDice() {
    /* 51) Ways 1 - Random Constructor (math)
    var diceRoll = Random().nextInt(6) + 1; */ 
    // .nextInt(6) -> 0 to 5  .nextInt(6) + 1 -> 1 to 6

    // 49) code + 50) Stateful Widget
    setState(() {
      // Inside anonymous function any updates to class variables
      /* 51) Ways 1 - Random Constructor (math)
      activeDiceImage = 'assets/images/dice-$diceRoll.png';*/
      // 52) Ways 2 - Random Constructor (math)
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          /* 51) Ways 1 - Random Constructor (math)
          activeDiceImage,*/
          // 52) Ways 2 - Random Constructor (math)
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        // 48) Add Spacing
        const SizedBox(height: 20.0),
        //add Text button
        TextButton(
          /* 47) Anonymous Function
          onPressed: () {/* code */}, */
          // 47) Named Function
          onPressed: rollDice,
          // 48) Styling Button
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20.0
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Roll dice"),
        ),
      ],
    );
  }
}
