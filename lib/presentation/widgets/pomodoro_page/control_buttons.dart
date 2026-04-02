import 'package:flutter/material.dart';

class ControlButtons extends StatelessWidget {
  final VoidCallback onStart;
  final VoidCallback onPause;
  final VoidCallback onReset;

  const ControlButtons({
    super.key,
    required this.onStart,
    required this.onPause,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: onStart, icon: Icon(Icons.play_arrow)),
        IconButton(onPressed: onPause, icon: Icon(Icons.pause)),
        IconButton(onPressed: onReset, icon: Icon(Icons.refresh)),
      ],
    );
  }
}