import 'package:flutter/material.dart';

class StyledText extends StatelessWidget { 
  //constructor function 
  
  /* 1- Initializer list assignment (without shorthand constructor)
  const StyledText(String text, {super.key}) : textDynamic = text;
  final String textDynamic; */

  //2- shorthand constructor
  const StyledText(this.text, {super.key}); //variable to hold the text
  final String text; //variable to hold the text and only receive runtime

  @override
  Widget build(context){
    return Text(
      // 1- textDynamic, use the variable declared in initializer list
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
