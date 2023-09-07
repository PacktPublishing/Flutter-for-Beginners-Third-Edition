import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  AnimationWidget({Key? key}) : super(key: key);

  @override
  State<AnimationWidget> createState() => _AnimationState();
}

class _AnimationState extends State<AnimationWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    final (localController, localAnimation) = _createBounceInRotationAnimation();
    _controller = localController;
    _animation = localAnimation;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
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
}
