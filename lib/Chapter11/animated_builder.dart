import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotationBuilderAnimations extends StatefulWidget {
  RotationBuilderAnimations({Key? key}) : super(key: key);

  @override
  State<RotationBuilderAnimations> createState() => _RotationBuilderAnimationsState();
}

class _RotationBuilderAnimationsState extends State<RotationBuilderAnimations> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    final (localController, localAnimation) = _createBounceInRotationAnimation();
    _controller = localController;
    _animation = localAnimation;
  }

  (AnimationController, Animation) _createBounceInRotationAnimation() {
    final controller = AnimationController(
      vsync: this,
      debugLabel: "animations demo",
      duration: Duration(seconds: 3),
    );
    final animation = controller.drive(CurveTween(
      curve: Curves.bounceIn,
    ));
    return (controller, animation);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animation,
        child: ElevatedButton(
          child: Text("Rotated button"),
          onPressed: () {
            print("Rotating");
            print("${_animation.status}");
            if (_animation.isCompleted || _animation.isDismissed) {
              _controller.reset();
              _controller.forward();
            }
          },
        ),
        builder: (context, child) {
          print("Building");
          return Transform.rotate(
            angle: _animation.value * 2.0 * math.pi,
            child: child,
          );
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
