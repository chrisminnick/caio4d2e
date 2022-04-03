// app06main.dart

import 'package:flutter/material.dart';

import 'app0609.dart'; // Change this line to app0605, app0606, and so on.

void main() => runApp(const App06Main());

class App06Main extends StatelessWidget {
  const App06Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[400],
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: buildColumn(context),
      ),
    );
  }
}

Widget buildTitleText() {
  return Text(
    "My Pet Shop",
    textScaleFactor: 3.0,
    textAlign: TextAlign.center,
  );
}

Widget buildRoundedBox(
  String label, {
  double height = 88.0,
}) {
  return Container(
    height: height,
    width: 88.0,
    alignment: Alignment(0.0, 0.0),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    child: Text(
      label,
      textAlign: TextAlign.center,
    ),
  );
}
