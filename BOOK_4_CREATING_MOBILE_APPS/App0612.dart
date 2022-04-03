// app0612.dart

import 'package:flutter/material.dart';

import 'app06main.dart';

Widget buildColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      buildTitleText(),
      const SizedBox(height: 20.0),
      _buildRowOfThree(),
    ],
  );
}

Widget _buildRowOfThree() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      _buildExpandedBox(
        "Moose",
      ),
      _buildExpandedBox(
        "Squirrel",
        flex: 1,
      ),
      _buildExpandedBox(
        "Dinosaur",
        flex: 3,
      ),
    ],
  );
}

Widget _buildExpandedBox(
  String label, {
  double height = 88.0,
  int flex = 1,
}) {
  return Expanded(
    flex: flex,
    child: buildRoundedBox(
      label,
      height: height,
    ),
  );
}
