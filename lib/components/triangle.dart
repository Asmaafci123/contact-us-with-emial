import 'package:flutter/cupertino.dart';

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =Color(0xFF3AB44E)
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width * 0 / 4, size.height * 0 / 4);
    path.lineTo(size.width * 1 / 1, size.height * 0 / 2);
    path.lineTo(size.width * 1 / 2, size.height * 4 / 4);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
