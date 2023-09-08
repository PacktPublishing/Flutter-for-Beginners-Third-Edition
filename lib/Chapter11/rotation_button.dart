import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotationAnimations extends StatefulWidget {
  RotationAnimations({Key? key}) : super(key: key);

  @override
  State<RotationAnimations> createState() => _RotationAnimationsState();
}

class _RotationAnimationsState extends State<RotationAnimations> with SingleTickerProviderStateMixin {
  double _angle = 0.0;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = _createRotationAnimation();
    _controller.forward();
  }

  AnimationController _createRotationAnimation() {
    var controller = AnimationController(
      vsync: this,
      debugLabel: "animations demo",
      duration: Duration(seconds: 3),
    );
    controller.addListener(() {
      setState(() {
        _angle = (controller.value * 360.0) * (math.pi / 180);
      });
    });
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: _rotationAnimationButton());
  }

  _rotationAnimationButton() {
    return Transform.rotate(
      angle: _angle,
      child: ElevatedButton(
        child: Text("Rotated button"),
        onPressed: () {
          if (_controller.status == AnimationStatus.completed) {
            _controller.reset();
            _controller.forward();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
