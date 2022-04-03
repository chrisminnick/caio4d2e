// app0608.dart

import 'package:flutter/material.dart';

import 'app06main.dart';

Widget buildColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      buildTitleText(),
      const SizedBox(height: 20.0),
      _buildRowOfFive(),
    ],
  );
}

Widget _buildRowOfFive() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      _buildExpandedBox("Cat"),
      _buildExpandedBox("Dog"),
      _buildExpandedBox("Ape"),
      _buildExpandedBox("Ox"),
      _buildExpandedBox("Gnu"),
    ],
  );
}

Widget _buildExpandedBox(
  String label, {
  double height = 88.0,
}) {
  return Expanded(
    child: buildRoundedBox(
      label,
      height: height,
    ),
  );
}
