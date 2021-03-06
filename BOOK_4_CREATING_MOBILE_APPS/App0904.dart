// app0904.dart

import 'package:flutter/material.dart';

import 'app09main.dart';

extension MyHomePageStateExtension on MyHomePageState {
  Animation getAnimation(AnimationController controller) {
    return Tween<double>(begin: 50.0, end: 250.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  Widget buildPositionedWidget() {
    int intValue = animation.value.toInt();
    return Center(
      child: Icon(
        Icons.child_care,
        size: animation.value,
        color: Color.fromRGBO(
          intValue,
          0,
          255 - intValue,
          1.0,
        ),
      ),
    );
  }
}
