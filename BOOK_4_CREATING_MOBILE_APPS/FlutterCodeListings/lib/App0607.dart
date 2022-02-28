// App0607.dart

import 'package:flutter/material.dart';

import 'App06Main.dart';

Widget buildColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      buildTitleText(),
      SizedBox(height: 20.0),
      _buildColumnWithinRow(),
    ],
  );
}

Widget _buildColumnWithinRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      buildRoundedBox("Cat"),
      SizedBox(width: 20.0),
      buildRoundedBox("Dog"),
      SizedBox(width: 20.0),
      Column(
        children: <Widget>[
          buildRoundedBox(
            "Big ox",
            height: 36.0,
          ),
          SizedBox(height: 16.0),
          buildRoundedBox(
            "Small ox",
            height: 36.0,
          ),
        ],
      ),
    ],
  );
}
