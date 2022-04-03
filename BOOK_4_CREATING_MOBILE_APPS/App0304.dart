import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(const App0304());

class App0304 extends StatelessWidget {
  const App0304({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My First Scaffold"),
            elevation: 100,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
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
