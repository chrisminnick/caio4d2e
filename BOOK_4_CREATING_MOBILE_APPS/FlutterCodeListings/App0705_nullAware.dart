import 'package:flutter/material.dart';

void main() => runApp(App0705());

class App0705 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Gender { Female, Male, Other, NoSelection }

String? show(Gender gender) => gender?.toString().replaceAll("Gender.", "");

class _MyHomePageState extends State<MyHomePage> {
  String _messageToUser = "";
  Gender _genderRadioValue = Gender.NoSelection;

  /// Build

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Are you compatible with Irving?"),
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
        Text("Female"),
        Radio(
          value: Gender.Female,
          groupValue: _genderRadioValue,
          onChanged: _updateGenderRadio,
        ),
        SizedBox(width: 25.0),
        Text("Male"),
        Radio(
          value: Gender.Male,
          groupValue: _genderRadioValue,
          onChanged: _updateGenderRadio,
        ),
        SizedBox(width: 25.0),
        Text("Other"),
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
          child: Text("Submit"),
          onPressed: _updateResults,
        ),
        SizedBox(
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
      _messageToUser =
          "You selected ${show(_genderRadioValue) ?? 'nothing yet'}.";
    });
  }
}
