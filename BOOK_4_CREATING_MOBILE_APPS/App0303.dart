import 'package:flutter/material.dart';

main() => runApp(App0303());

class App0303 extends StatelessWidget {
  const App0303({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My First Scaffold"),
          ),
          body: const Center(
            child: Text("Hello world!"),
          ),
          drawer: const Drawer(
            child: Center(child: Text("I'm a drawer.")),
          )),
    );
  }
}
