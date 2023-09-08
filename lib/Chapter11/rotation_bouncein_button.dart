import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotationBounceInAnimations extends StatefulWidget {
  RotationBounceInAnimations({Key? key}) : super(key: key);

  @override
  State<RotationBounceInAnimations> createState() => _RotationBounceInAnimationsState();
}

class _RotationBounceInAnimationsState extends State<RotationBounceInAnimations> with SingleTickerProviderStateMixin {
  double _angle = 0.0;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = _createBounceInRotationAnimation();
    _controller.forward();
  }

  AnimationController _createBounceInRotationAnimation() {
    var controller = AnimationController(
      vsync: this,
      debugLabel: "animations demo",
      duration: Duration(seconds: 3),
    );
    var animation = controller.drive(CurveTween(
      curve: Curves.bounceIn,
    ));
    animation.addListener(() {
      setState(() {
        _angle = (animation.value * 360.0) * (math.pi / 180);
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
