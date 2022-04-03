import 'package:flutter/material.dart';

void main() => runApp(const App0501());

class App0501 extends StatelessWidget {
  const App0501({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  String _pressedOrNot = "You haven't pressed the button.";

  void _changeText() {
    setState(_getNewText);
  }

  void _getNewText() {
    _pressedOrNot = "You've pressed the button.";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(
            _pressedOrNot,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _changeText,
        ));
  }
}
