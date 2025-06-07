import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

// Defining a Function 
void main() { 
// Executing ("calling ") a Function
  runApp(  
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 47, 5, 120),
        body: 
        //45 - Default contructor function
        GradientContainer(
          /*45) List of Colors
          colors: [
            Color.fromARGB(255, 33, 5, 109),
            Color.fromARGB(255, 68, 21, 149)
          ],*/
          /* 45) Individual of Colors*/ 
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 149)
        ),
        /*46 - Call function constructor purple
        GradientContainer.purple(),*/
      ),
    ),
  ); 
}