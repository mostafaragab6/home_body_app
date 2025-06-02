import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 239.h,
      left: 138.5.w,
      child: Container(
        width: 154.w,
        height: 154.h,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/icons/logo.png'),
          ),
        ),
      ),
    );
  }
}
