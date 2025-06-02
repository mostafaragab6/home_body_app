import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/app_colors.dart';

class AppTextButton extends StatelessWidget {
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final Widget buttonWidget;
  final double? buttonWidth;
  final double? buttonheight;
  final double? horizontalPadding;
  final double? verticalPadding;
  final VoidCallback onPressed;

  const AppTextButton(
      {super.key,
      required this.buttonWidget,
      this.textStyle,
      this.backgroundColor,
      this.buttonWidth,
      this.buttonheight,
      this.horizontalPadding,
      this.verticalPadding,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(backgroundColor ?? AppColors.primary),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(
            buttonWidth?.w ?? 276.w,
            buttonheight?.h ?? 40.h,
          ),
        ),
      ),
      onPressed: onPressed,
      child: buttonWidget,
    );
  }
}
