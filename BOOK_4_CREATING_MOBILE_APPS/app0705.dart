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

enum Relationship {
  None,
  Friend,
  OneDate,
  Ongoing,
  Committed,
  Marriage,
}

Map<Relationship, String> show = {
  Relationship.None: "None",
  Relationship.Friend: "Friend",
  Relationship.OneDate: "One date",
  Relationship.Ongoing: "Ongoing relationship",
  Relationship.Committed: "Committed relationship",
  Relationship.Marriage: "Marriage"
};

List<DropdownMenuItem<Relationship>> _relationshipsList = [
  DropdownMenuItem(
    value: Relationship.None,
    child: Text(show[Relationship.None]!),
  ),
  DropdownMenuItem(
    value: Relationship.Friend,
    child: Text(show[Relationship.Friend]!),
  ),
  DropdownMenuItem(
    value: Relationship.OneDate,
    child: Text(show[Relationship.OneDate]!),
  ),
  DropdownMenuItem(
    value: Relationship.Ongoing,
    child: Text(show[Relationship.Ongoing]!),
  ),
  DropdownMenuItem(
    value: Relationship.Committed,
    child: Text(show[Relationship.Committed]!),
  ),
  DropdownMenuItem(
    value: Relationship.Marriage,
    child: Text(show[Relationship.Marriage]!),
  ),
];

class _MyHomePageState extends State<MyHomePage> {
  Relationship _relationshipDropdownValue = Relationship.None;

  /// State

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Are you compatible with Hilda?"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30.0,
            ),
            _buildRelationshipDropdown(),
            _buildResultsImage(),
          ],
        ),
      ),
    );
  }

  /// Build

  Widget _buildRelationshipDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("What kind of relationship are you looking for?"),
        _buildDropdownButtonRow(),
      ],
    );
  }

  Widget _buildDropdownButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        DropdownButton<Relationship>(
          items: _relationshipsList,
          onChanged: _updateRelationshipDropdown,
          value: _relationshipDropdownValue,
        ),
        if (_relationshipDropdownValue != Relationship.None)
          TextButton(
            child: const Text(
              "Reset",
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: _reset,
          ),
      ],
    );
  }

  Widget _buildResultsImage() {
    if (_relationshipDropdownValue != Relationship.None) {
      return Icon(
        (_relationshipDropdownValue.index >= 3)
            ? Icons.favorite
            : Icons.sentiment_dissatisfied,
        size: 96,
        color: Colors.pink,
      );
    } else {
      return const SizedBox();
    }
  }

  /// Actions

  void _reset() {
    setState(() {
      _relationshipDropdownValue = Relationship.None;
    });
  }

  void _updateRelationshipDropdown(Relationship? newValue) {
    setState(() {
      _relationshipDropdownValue = newValue!;
    });
  }
}
