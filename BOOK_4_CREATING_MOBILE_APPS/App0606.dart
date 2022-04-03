import 'package:flutter/material.dart';

import 'app06main.dart';

Widget buildColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      buildTitleText(),
      const SizedBox(height: 20.0),
      _buildCaptionedRow(),
    ],
  );
}

Widget _buildCaptionedRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      _buildCaptionedItem(
        "Cat",
        caption: "Meow",
      ),
      _buildCaptionedItem(
        "Dog",
        caption: "Woof",
      ),
      _buildCaptionedItem(
        "Ape",
        caption: "Chatter",
      ),
    ],
  );
}

Column _buildCaptionedItem(String label, {required String caption}) {
  return Column(
    children: <Widget>[
      buildRoundedBox(label),
      SizedBox(
        height: 5.0,
      ),
      Text(
        caption,
        textScaleFactor: 1.25,
      ),
    ],
  );
}
