import 'package:flutter/material.dart';

main() => runApp(const App0301());

class App0301 extends StatelessWidget {
  const App0301({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Text("Hello world!"),
      ),
    );
  }
}
