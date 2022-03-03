import 'package:flutter/material.dart';
import 'dart:ui' as ui;
class SplashCanvas extends CustomPainter {
  final ui.Image? imageCanvas;

  const SplashCanvas(this.imageCanvas);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.amber;

    paint.style = PaintingStyle.fill;

    paint.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(
        size.width * 0.50, size.height * 0.28, size.width, size.height * 0.20);

    // path.quadraticBezierTo(x1, y1, x2, y2)
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

    canvas.scale(0.3, 0.3);
    // print(imageCanvas!.height);

    canvas.drawImage(imageCanvas!, const Offset(180 * 2.5, 420 * 2.5), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
