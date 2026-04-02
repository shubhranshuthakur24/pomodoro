import 'package:flutter/material.dart';

class TimerText extends StatelessWidget {
  final String text;

  const TimerText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: Text(
        text,
        key: ValueKey(text),
        style: const TextStyle(fontSize: 48),
      ),
    );
  }
}