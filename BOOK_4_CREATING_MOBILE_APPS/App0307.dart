import 'package:flutter/material.dart';

main() => runApp(const App0307());

class App0307 extends StatelessWidget {
  const App0307({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Adding Widgets"),
        ),
        body: Center(
          child: Column(children: const [
            Text(
              "Hello world!",
              textScaleFactor: 2.0,
            ),
            Text("It's lonely for me inside this phone.")
          ]),
        ),
      ),
    );
  }
}
