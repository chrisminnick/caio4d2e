import 'package:flutter/material.dart';

main() => runApp(const App0309());

class App0309 extends StatelessWidget {
  const App0309({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First Image"),
        ),
        body: Center(
          child: Image.asset('robot.png'),
        ),
      ),
    );
  }
}
