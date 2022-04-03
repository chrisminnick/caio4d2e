// app09main.dart

import 'package:flutter/material.dart';

import 'app0906.dart'; // Change to App0903, App0904, and so on.

void main() => runApp(const App09Main());

class App09Main extends StatelessWidget {
  const App09Main({Key? key}) : super(key: key);

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
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = getAnimation(controller) as Animation<double>;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[
                    buildPositionedWidget(),
                  ],
                ),
              ),
              buildRowOfButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRowOfButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () => controller.forward(),
          child: const Text('Forward'),
        ),
        const SizedBox(
          width: 8.0,
        ),
        ElevatedButton(
          onPressed: () => controller.animateBack(0.0),
          child: const Text('Backward'),
        ),
        const SizedBox(
          width: 8.0,
        ),
        ElevatedButton(
          onPressed: () => controller.reset(),
          child: const Text('Reset'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
