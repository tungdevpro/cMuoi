import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget child;
  const Box({super.key, this.width, this.height, required this.child});

  factory Box.icon(Widget child) {
    return Box(width: 22, height: 22, child: child);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height, child: child);
  }
}
