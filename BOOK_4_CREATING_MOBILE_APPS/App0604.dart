// app0604.dart

import 'package:flutter/material.dart';

void main() => runApp(const App0604());

class App0604 extends StatelessWidget {
  const App0604({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Material(
          color: Colors.grey[50],
          child: Container(
            color: Colors.grey[500],
            padding: const EdgeInsets.all(80.0),
            margin: const EdgeInsets.all(40.0),
            child: Container(
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }
}
