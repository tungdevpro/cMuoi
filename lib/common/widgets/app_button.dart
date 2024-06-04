import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final TextStyle? titleStyle;
  final double? height;
  const AppButton({super.key,  this.onTap, required this.title, this.titleStyle, this.height = 60});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: titleStyle ?? const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
