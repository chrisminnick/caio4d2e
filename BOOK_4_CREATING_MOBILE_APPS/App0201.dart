import 'package:flutter/material.dart';

main() => runApp(const App0201());

class App0201 extends StatelessWidget {
  const App0201({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Center(
          child: Text("Hello world!"),
        ),
      ),
    );
  }
}
