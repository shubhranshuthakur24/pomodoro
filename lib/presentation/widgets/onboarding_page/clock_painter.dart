import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    /// Clock Circle
    final circlePaint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xFF5B5BFF), Color(0xFF3B3B98)],
      ).createShader(Rect.fromCircle(center: center, radius: 100));

    canvas.drawCircle(center, 90, circlePaint);

    /// Clock Border
    final border = Paint()
      ..color = Colors.indigo.shade900
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    canvas.drawCircle(center, 90, border);

    /// Clock Hand
    final hand = Paint()
      ..color = Colors.white
      ..strokeWidth = 4;

    canvas.drawLine(
      center,
      Offset(center.dx, center.dy - 50),
      hand,
    );

    /// Leaves (simple ovals)
    final leafPaint = Paint()..color = Colors.blueAccent.withOpacity(0.3);

    canvas.drawOval(
      Rect.fromCenter(center: Offset(40, 60), width: 50, height: 80),
      leafPaint,
    );

    canvas.drawOval(
      Rect.fromCenter(center: Offset(200, 60), width: 50, height: 80),
      leafPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}