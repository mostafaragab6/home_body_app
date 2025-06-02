import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDropDownTextField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsets? contentPadding;
  final OutlineInputBorder? focusedBorder;
  final OutlineInputBorder? enabledBorder;
  final TextEditingController controller;
  final Color? fillColor;
  final Color? borderColor;
  final Widget? icon;
  final double? borderRadius;
  final double? borderWidth;

  final TextStyle? hintTextStyle;
  final bool? enabled;
  final Function(String?) validator;
  final void Function(String?)? onChanged;

  final List<DropdownMenuItem<String>> list;
  final String? value;
  final double? maxWidth;
  final double? maxHeight;

  const AppDropDownTextField({
    this.borderWidth,
    this.borderRadius,
    this.maxHeight,
    this.maxWidth,
    this.icon,
    this.borderColor,
    required this.value,
    required this.list,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    required this.hintText,
    this.suffixIcon,
    required this.controller,
    required this.validator,
    this.prefixIcon,
    this.fillColor,
    this.hintTextStyle,
    this.onChanged,
    super.key,
    this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
        constraints: BoxConstraints(
            minHeight: 44.h, maxHeight: 44.h, maxWidth: maxWidth ?? 365.w),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? Colors.white,
                width: borderWidth ?? 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 16),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? Colors.white,
                width: borderWidth ?? 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.white,
            width: borderWidth ?? 1.3,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.white,
            width: borderWidth ?? 1.3,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
        ),
        hintText: hintText,
        isDense: true,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? Colors.white,
        filled: true,
        prefixIcon: prefixIcon,
      ),
      dropdownColor: Colors.white,
      items: list,
      onChanged: onChanged,
      value: value,
      icon: icon,
    );
  }
}
