import 'package:flutter/cupertino.dart';

void main() => runApp(const App0305());

class App0305 extends StatelessWidget {
  const App0305({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        home: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(),
            child: Center(child: Text("Hello world!"))));
  }
}
