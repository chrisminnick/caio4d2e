import 'package:flutter/material.dart';

void main() => runApp(const App0705());

class App0705 extends StatelessWidget {
  const App0705({Key? key}) : super(key: key);

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

enum Gender { Female, Male, Other, NoSelection }

String show(Gender gender) => gender.toString().replaceAll("Gender.", "");

class _MyHomePageState extends State<MyHomePage> {
  String _messageToUser = "";
  Gender _genderRadioValue = Gender.NoSelection;

  /// Build

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Are you compatible?"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            _buildGenderRadio(),
            _buildResultArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildGenderRadio() {
    return Row(
      children: <Widget>[
        const Text("Female"),
        Radio(
          value: Gender.Female,
          groupValue: _genderRadioValue,
          onChanged: _updateGenderRadio,
        ),
        const SizedBox(width: 25.0),
        const Text("Male"),
        Radio(
          value: Gender.Male,
          groupValue: _genderRadioValue,
          onChanged: _updateGenderRadio,
        ),
        const SizedBox(width: 25.0),
        const Text("Other"),
        Radio(
          value: Gender.Other,
          groupValue: _genderRadioValue,
          onChanged: _updateGenderRadio,
        ),
      ],
    );
  }

  Widget _buildResultArea() {
    return Row(
      children: <Widget>[
        ElevatedButton(
          child: const Text("Submit"),
          onPressed: _updateResults,
        ),
        const SizedBox(
          width: 15.0,
        ),
        Text(
          _messageToUser,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  /// Actions

  void _updateGenderRadio(Gender? newValue) {
    setState(() {
      _genderRadioValue = newValue!;
    });
  }

  void _updateResults() {
    setState(() {
      if (_genderRadioValue != Gender.NoSelection) {
        _messageToUser = "You selected ${show(_genderRadioValue)}.";
      } else {
        _messageToUser = "You selected nothing yet.";
      }
    });
  }
}
