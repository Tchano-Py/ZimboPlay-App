import 'dart:ui';
import 'package:flutter/material.dart';

class BlurredBackground extends StatelessWidget {
  final String backgroundImage;
  final Widget child;

  const BlurredBackground({
    super.key,
    required this.backgroundImage,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          backgroundImage,
          fit: BoxFit.cover,
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: const Color.fromRGBO(0, 0, 0, .3),
          ),
        ),
        child,
      ],
    );
  }
}
