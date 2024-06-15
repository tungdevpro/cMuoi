import 'package:flutter/material.dart';

import 'package:path_drawing/path_drawing.dart';

class CustomDashedBorder extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets borderPadding;
  final Color color;
  final Radius radius;
  final StackFit stackFit;

  const CustomDashedBorder({
    Key? key,
    required this.child,
    this.color = Colors.black,
    this.padding = const EdgeInsets.all(2),
    this.borderPadding = EdgeInsets.zero,
    this.radius = const Radius.circular(0),
    this.stackFit = StackFit.loose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: stackFit,
      children: <Widget>[
        Positioned.fill(child: CustomPaint(painter: MyPainter(padding: borderPadding, radius: radius, color: color))),
        Padding(padding: padding, child: child),
      ],
    );
  }
}


class MyPainter extends CustomPainter {
  final Color color;
  final Radius radius;
  final EdgeInsets padding;

  MyPainter({
    this.color = Colors.black,
    this.radius = const Radius.circular(0),
    this.padding = EdgeInsets.zero,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Size sizeOf;
    if (padding == EdgeInsets.zero) {
      sizeOf = size;
    } else {
      canvas.translate(padding.left, padding.top);
      sizeOf = Size(
        size.width - padding.horizontal,
        size.height - padding.vertical,
      );
    }

    Paint paint = Paint()
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    paint.color = color;

    canvas.drawPath(_getPath(size), paint);
  }

  Path _getPath(Size size) {
    return dashPath(_getRRectPath(size, radius), dashArray: CircularIntervalList([10, 4]));
  }

  Path _getRRectPath(Size size, Radius radius) {
    return Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(
            0,
            0,
            size.width,
            size.height,
          ),
          radius,
        ),
      );
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.padding != padding;
  }
}