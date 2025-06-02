import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/theming/app_colors.dart';

// ignore: must_be_immutable
class PositionedContainer extends StatelessWidget {
  Widget? child;
  int? height;
  PositionedContainer({required this.height, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 250.h,
      left: 18.w,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          top: 35.h,
        ),
        height: height!.h,
        width: 398.w,
        decoration: BoxDecoration(
          color: AppColors.scaffoldColor,
          borderRadius: BorderRadius.circular(19),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 0.0),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 13.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: child!,
      ),
    );
  }
}
