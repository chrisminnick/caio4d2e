import 'package:flutter/material.dart';

main() => runApp(const App0402());

class App0402 extends StatelessWidget {
  const App0402({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(child: Text(highlight5("Look at me"))),
      ),
    );
  }
}

highlight(words) {
  return "*** " + words + " ***";
}

highlight2(words) {
  print("Wha' da' ya' know!");
  print("You've just called the highlight2 function!");
  return "*** " + words + " ***";
}

highlight3(words) {
  int? numberOfKazoos;
  print(numberOfKazoos);
  print(numberOfKazoos = 94);
  return "*** " + words + " ***";
}

highlight4(words) {
  int numberOfKazoos = 100;
  print(numberOfKazoos);
  print(numberOfKazoos++);
  print(numberOfKazoos);
  return "*** " + words + " ***";
}

highlight5(words) {
  var x;
  x = 7;
  print(x);
  x = "I've been turned into a String"; // Dart is happy to oblige
  print(x);
  return "*** " + words + " ***";
}
