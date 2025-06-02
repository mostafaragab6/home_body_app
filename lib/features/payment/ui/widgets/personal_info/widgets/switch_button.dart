import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_colors.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool switchBool = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.h,
      width: 51.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          const BoxShadow(
            offset: Offset(0, 1),
            color: AppColors.lightGrey,
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Switch(
        value: switchBool,
        activeColor: Colors.green,
        inactiveThumbColor: AppColors.grey,
        thumbColor: const WidgetStatePropertyAll(Colors.white),
        onChanged: (value) {
          setState(() {
            switchBool = value;
          });
        },
      ),
    );
  }
}
