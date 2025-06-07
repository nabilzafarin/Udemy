import 'package:flutter/material.dart';
// 51) Generate Random Number
import 'dart:math';

// 52) final var for Object (can be once create object and reuse)
final randomizer = Random(); //global variable

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
  /*
  OR
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
   */
}

class _DiceRollerState extends State<DiceRoller> {
  /* 49) How to NOT build interact widgets
  var activeDiceImage = 'assets/images/dice-2.png';*/
   // 51) Generate Random Number (Ways-2)
   var currentDiceRoll = 2; // default value

  // 47) Named Function
  void rollDice() {
    /* 51) Generate Random Number (Ways-1)
    var diceRoll = Random().nextInt(6) + 1; //range num 1-6 */
    // 49) code function + 50) Stateful Widget
    setState(() {
      /* 50) setState Anonymous function (any updates to class variables)
      activeDiceImage = 'assets/images/dice-4.png';*/
      
      /* 51) Generate Random Number (Ways-1)
      activeDiceImage = 'assets/images/dice-$diceRoll.png'; // pass value random num */
      // 51) Generate Random Number (Ways-2)
      currentDiceRoll = randomizer.nextInt(6) + 1; //override default value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          /* 51) Generate Random Number (Ways-1)
          activeDiceImage,*/
          // 51) Generate Random Number (Ways-2)
          'assets/images/dice-$currentDiceRoll.png',
          width: 200
        ),
        // 48) Add Spacing
        const SizedBox(height: 20.0),
        TextButton(
            /* 47) Anonymous Function
          onPressed: () {
            //code..
          }, */
            // 47) Named Function
            onPressed: rollDice,
            style: TextButton.styleFrom(
              /* 48) Add Spacing 
            padding: const EdgeInsets.only(
              top: 20.0,
            ),*/
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll dice')),
      ],
    );
  }
}
