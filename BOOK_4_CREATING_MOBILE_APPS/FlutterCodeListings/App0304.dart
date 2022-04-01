import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(App0304());

class App0304 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First Scaffold"),
            elevation: 100,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          body: Center(
            child: Text("Hello world!"),
          ),
          drawer: Drawer(
            child: Center(child: Text("I'm a drawer.")),
          )),
    );
  }
}
