import 'package:flutter/material.dart';

void main() => runApp(const App0701());

class App0701 extends StatelessWidget {
  const App0701({Key? key}) : super(key: key);

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

const _youAre = 'You are';
const _compatible = 'compatible with\nDoris D. Developer.';

class _MyHomePageState extends State<MyHomePage> {
  bool _ageSwitchValue = false;
  String _messageToUser = "$_youAre NOT $_compatible";

  /// State

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Are you compatible with Doris?"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            _buildAgeSwitch(),
            _buildResultArea(),
          ],
        ),
      ),
    );
  }

  /// Build

  Widget _buildAgeSwitch() {
    return Row(
      children: <Widget>[
        const Text("Are you 18 or older?"),
        Switch(
          value: _ageSwitchValue,
          onChanged: _updateAgeSwitch,
        ),
      ],
    );
  }

  Widget _buildResultArea() {
    return Text(_messageToUser, textAlign: TextAlign.center);
  }

  /// Actions

  void _updateAgeSwitch(bool newValue) {
    setState(() {
      _ageSwitchValue = newValue;
      _messageToUser =
          _youAre + (_ageSwitchValue ? " " : " NOT ") + _compatible;
    });
  }
}
