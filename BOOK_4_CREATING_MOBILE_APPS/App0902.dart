// app0902.dart

import 'package:flutter/material.dart';

import 'app09main.dart';

extension MyHomePageStateExtension on MyHomePageState {
  Animation getAnimation(AnimationController controller) {
    Tween tween = Tween<double>(begin: 100.0, end: 500.0);
    Animation animation = tween.animate(controller);
    animation.addListener(() {
      setState(() {});
    });
    return animation;
  }

  Widget buildPositionedWidget() {
    return Positioned(
      left: 150.0,
      top: animation.value,
      child: const Icon(
        Icons.music_note,
        size: 70.0,
      ),
    );
  }
}
