import 'package:flutter/material.dart';

main() => runApp(const App0306());

class App0306 extends StatelessWidget {
  const App0306({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Adding Widgets"),
        ),
        body: Column(children: const [
          Text(
            "Hello world!",
            textScaleFactor: 2.0,
          ),
          Text("It's lonely for me inside this phone.")
        ]),
      ),
    );
  }
}
