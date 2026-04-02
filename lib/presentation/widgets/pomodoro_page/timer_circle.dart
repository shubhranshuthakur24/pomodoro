import 'package:flutter/material.dart';

class TimerCircle extends StatelessWidget {
  final int timeLeft;
  final int totalTime;

  const TimerCircle({
    super.key,
    required this.timeLeft,
    required this.totalTime,
  });

  @override
  Widget build(BuildContext context) {
    double progress = timeLeft / totalTime;

    return TweenAnimationBuilder(
      tween: Tween(begin: progress, end: progress),
      duration: const Duration(milliseconds: 500),
      builder: (context, value, child) {
        return CircularProgressIndicator(
          value: value,
          strokeWidth: 8,
        );
      },
    );
  }
}