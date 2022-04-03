import 'package:flutter/material.dart';

main() => runApp(const App0302());

class App0302 extends StatelessWidget {
  const App0302({Key? key}) : super(key: key);

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
