import 'package:flutter/material.dart';

main() => runApp(App0308());

class App0308 extends StatelessWidget {
  const App0308({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Adding Widgets"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
