import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/app_colors.dart';
import '../../theming/text_styles.dart';

class AppTextForm extends StatelessWidget {
  final bool? isObscured;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final EdgeInsets? contentPadding;
  final OutlineInputBorder? focusedBorder;
  final OutlineInputBorder? border;

  final OutlineInputBorder? enabledBorder;
  final TextEditingController controller;
  final Function(String?) validator;
  final double? maxWidth;
  final double? borderRadius;

  final TextStyle? hintStyle;
  final Color? fillColor;
  final Function(String)? onChanged;

  const AppTextForm({
    this.borderRadius,
    this.onChanged,
    this.prefixIcon,
    this.border,
    this.fillColor,
    this.hintStyle,
    this.maxWidth,
    super.key,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    required this.hintText,
    this.isObscured,
    this.suffixIcon,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxWidth: maxWidth ?? double.infinity,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.lighterGrey,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.lighterGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 4),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.lighterGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 4),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
        ),
        hintStyle: hintStyle ?? TextStyles.font16DarkGrey500(),
        hintText: hintText,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fillColor ?? Colors.white,
        prefixIcon: prefixIcon,
      ),
      obscureText: isObscured ?? false,
      style: TextStyles.font16Black500(),
    );
  }
}
