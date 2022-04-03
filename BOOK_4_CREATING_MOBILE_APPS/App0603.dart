// app0603.dart

import 'package:flutter/material.dart';

void main() => runApp(const App0603());

class App0603 extends StatelessWidget {
  const App0603({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.grey[50],
        child: Container(
          color: Colors.grey[500],
          child: Container(
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
