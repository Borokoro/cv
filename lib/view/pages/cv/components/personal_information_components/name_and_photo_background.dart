import 'package:flutter/material.dart';

class NameAndPhotoBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;
    
    final Paint topPaint = Paint()
      ..color = const Color(0xFF565B80);

    canvas.drawRect(
      Rect.fromLTWH(0, 0, width, height),
      topPaint,
    );

    final Paint darkPaint = Paint()
      ..color = const Color(0xFF30355F);

    final Path darkPath = Path();

    darkPath.moveTo(0, height * 0.485);

    darkPath.cubicTo(
      width * 0.18,
      height * 0.575,
      width * 0.38,
      height * 0.635,
      width * 0.50,
      height * 0.645,
    );

    darkPath.cubicTo(
      width * 0.62,
      height * 0.635,
      width * 0.82,
      height * 0.575,
      width,
      height * 0.485,
    );

    darkPath.lineTo(width, height * 0.555);
    darkPath.cubicTo(
      width * 0.80,
      height * 0.665,
      width * 0.61,
      height * 0.715,
      width * 0.50,
      height * 0.725,
    );

    darkPath.cubicTo(
      width * 0.39,
      height * 0.715,
      width * 0.20,
      height * 0.665,
      0,
      height * 0.555,
    );

    darkPath.close();

    canvas.drawPath(darkPath, darkPaint);

    final Paint bottomPaint = Paint()
      ..color = const Color(0xFFE9E9E9);

    final Path bottomPath = Path();

    bottomPath.moveTo(0, height * 0.555);

    bottomPath.cubicTo(
      width * 0.20,
      height * 0.665,
      width * 0.39,
      height * 0.715,
      width * 0.50,
      height * 0.725,
    );

    bottomPath.cubicTo(
      width * 0.61,
      height * 0.715,
      width * 0.80,
      height * 0.665,
      width,
      height * 0.555,
    );

    bottomPath.lineTo(width, height);
    bottomPath.lineTo(0, height);
    bottomPath.close();

    canvas.drawPath(bottomPath, bottomPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}