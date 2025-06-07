/*Named Parameters
void add ({num1, num2}){
  num1 + num2;
  print(num1);
  print(num2);
}

void demo () {
  add(num2: 5, num1: 3);
}
*/

/*Positional Parameters*/
void add ( int num1, int num2){
  num1 + num2;
  print(num1);
  print(num2);
}

void demo () {
  add(5, 3);
}