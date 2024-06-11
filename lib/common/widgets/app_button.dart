import 'package:express_cart/common/common.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final TextStyle? titleStyle;
  final double? height;
  final Color? backgroundColor;
  final OutlinedBorder? shape;

  const AppButton({
    super.key,
    this.onTap,
    required this.title,
    this.titleStyle,
    this.height = 60,
    this.backgroundColor,
    this.shape,
  });

  factory AppButton.outline({
    required dynamic title,
    VoidCallback? onTap,
    Color? backgroundColor,
    OutlinedBorder? shape,
  }) {
    return AppButton(
      onTap: onTap,
      title: title,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColor.secondaryLight100),
        borderRadius: BorderRadius.circular(AppSize.radius),
      ),
      titleStyle: const TextStyle(
        fontSize: 16,
        color: AppColor.secondaryDefault,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
          shape: WidgetStatePropertyAll(shape),
        ),
        child: Text(
          title,
          style: titleStyle ??
              const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
