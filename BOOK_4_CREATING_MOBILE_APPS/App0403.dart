import 'package:flutter/material.dart';

main() {
  runApp(const App0403());
}

class App0403 extends StatelessWidget {
  const App0403({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(child: Text(highlight("Look at me"))),
      ),
    );
  }
}

highlight(words) => "*** $words ***";
