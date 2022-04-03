import 'package:flutter/material.dart';

void main() => runApp(const App0404());

class App0404 extends StatelessWidget {
  const App0404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(child: Text(highlight("Look at me"))),
      ),
    );
  }
}

String highlight(String words) {
  return "*** $words ***";
}
