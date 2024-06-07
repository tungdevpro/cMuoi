

import 'package:express_cart/common/common.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final dynamic label;
  const AppTextField({super.key, required this.label});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label is Widget ? widget.label : Text(widget.label, style: AppTypography.mediumType14),
      ],
    );
  }
}
