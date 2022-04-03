import 'package:flutter/material.dart';

main() => runApp(App0401());

class App0401 extends StatelessWidget {
  const App0401({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Center(child: Text("Hello world!")),
      ),
    );
  }
}
