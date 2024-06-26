import 'package:cmuoi/common/common.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppTextField extends StatefulWidget {
  final dynamic label;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  const AppTextField({super.key, required this.label, this.hintText, this.onChanged});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label is Widget
            ? widget.label
            : Text(
                widget.label,
                style: AppTypography.mediumType14,
              ),
        const Gap(12),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: _border,
            errorBorder: _border,
            enabledBorder: _border,
            focusedBorder: _border,
            disabledBorder: _border,
            focusedErrorBorder: _border,
            hintText: widget.hintText,
          ),
        )
      ],
    );
  }

  OutlineInputBorder get _border => OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColor.secondaryLight100,
      ),
      borderRadius: BorderRadius.circular(AppSize.radius));
}
