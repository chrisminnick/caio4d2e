// app0906.dart

import 'package:flutter/material.dart';

import 'app09main.dart';

double distanceFromLeft = 100;
double distanceFromTop = 100;

extension MyHomePageStateExtension on MyHomePageState {
  Animation getAnimation(AnimationController controller) {
    Animation animation = controller;
    return animation;
  }

  Widget buildPositionedWidget() {
    return Positioned(
      top: distanceFromTop,
      left: distanceFromLeft,
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            distanceFromLeft += details.delta.dx;
            distanceFromTop += details.delta.dy;
          });
        },
        child: Icon(
          Icons.all_inclusive,
          size: 70,
        ),
      ),
    );
  }
}
