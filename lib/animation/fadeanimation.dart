import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation({required this.delay, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomAnimationBuilder<double>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: Duration(milliseconds: 500),
      tween: Tween(begin: 0.0, end: 1.0),  // Tween for opacity
      builder: (context, opacityValue, _) {  // Corrected: animated value is opacityValue
        return CustomAnimationBuilder<double>(
          duration: Duration(milliseconds: 500),
          tween: Tween(begin: -30.0, end: 0.0),  // Tween for translateY
          builder: (context, translateYValue, __) {  // Corrected: animated value is translateYValue
            return Opacity(
              opacity: opacityValue ?? 1.0,
              child: Transform.translate(
                offset: Offset(0, translateYValue ?? 0.0),
                child: child,
              ),
            );
          },
          child: child,
        );
      },
      child: child,
    );
  }
}
