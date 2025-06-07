import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // Function Constructor
  /* 1- Intialize list assignment (without shorthand constructor) 
  const StyledText(String text, {super.key}) : textDynamic = text;
  final String textDynamic;*/
  // 2- shorthand constructor
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      /* 1 - Intialize list assignment (without shorthand constructor) 
      textDynamic,*/
      // 2- shorthand constructor
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28.0,
      ),
    );
  }
}
