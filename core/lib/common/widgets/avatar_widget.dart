import 'package:core/common/common.dart';
import 'package:core/common/helpers/func.dart';
import 'package:flutter/material.dart';

enum AvatarRadiusType { circle, small }

class AvatarWidget extends StatelessWidget {
  final String url;
  final double size;
  final String name;
  final Color? defaultColor;
  final AvatarRadiusType radiusType;
  final double? radius;

  const AvatarWidget(this.url,
      {super.key, this.size = 50, this.name = '', this.defaultColor, this.radiusType = AvatarRadiusType.circle, this.radius});

  @override
  Widget build(BuildContext context) {
    final String first = (!empty(name)) ? (name.split(' ').isNotEmpty ? name.trim().split(' ').last[0] : name) : '';
    final Color color = defaultColor ?? _convertColor(first);
    final fontSize = size / 2;
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? _defaultBorderRadius()),
      child: CustomPaint(
        // painter: DottedLine(Colors.red),
        child: SizedBox(
          width: size,
          height: size,
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              color: color,
              alignment: Alignment.center,
              child: Text(
                first.toUpperCase(),
                style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  double _defaultBorderRadius() {
    if (radiusType == AvatarRadiusType.small) return 6;
    return 100;
  }

  Color _convertColor(String firstText) {
    switch (firstText.toUpperCase()) {
      case 'Q':
        return const Color(0xff7e57c2);
      case 'W':
        return const Color(0xfff06292);
      case 'E':
        return const Color(0xffab47bc);
      case 'R':
        return const Color(0xffef5350);
      case 'T':
        return const Color(0xff03a9f4);
      case 'Y':
        return const Color(0xff00acc1);
      case 'U':
        return const Color(0xff8bc34a);
      case 'I':
        return const Color(0xff66bb6a);
      case 'O':
        return const Color(0xff26a69a);
      case 'P':
        return const Color(0xffffa726);
      case 'A':
        return const Color(0xffffca28);
      case 'S':
        return const Color(0xffff7043);
      case 'D':
        return const Color(0xff8d6e63);
      case 'F':
        return const Color(0xff29b6f6);
      case 'G':
        return const Color(0xff42a5f5);
      case 'H':
        return const Color(0xffa1887f);
      case 'J':
        return const Color(0xff7e57c2);
      case 'K':
        return const Color(0xfff06292);
      case 'L':
        return const Color(0xffab47bc);
      case 'Z':
        return const Color(0xffef5350);
      case 'X':
        return const Color(0xff03a9f4);
      case 'C':
        return const Color(0xff00acc1);
      case 'V':
        return const Color(0xff8bc34a);
      case 'B':
        return const Color(0xff66bb6a);
      case 'N':
        return const Color(0xff26a69a);
      case 'M':
        return const Color(0xffffa726);
      case 'Đ':
        return const Color(0xffffca28);
      case 'Ô':
        return const Color(0xffff7043);
      case 'Ơ':
        return const Color(0xff8d6e63);
      case 'Ă':
        return const Color(0xff29b6f6);
      case 'Ê':
        return const Color(0xff42a5f5);
      default:
        return Colors.blue;
    }
  }
}
