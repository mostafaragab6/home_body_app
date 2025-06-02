import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/register/presentation/screens/widgets/register_container_body.dart';

class RegisterContainer extends StatelessWidget {
  const RegisterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        clipper: TopCurveClipper(),
        child: Container(
          width: size.width,
          height: 615.h,
          padding:
              EdgeInsetsDirectional.only(start: 20.w, end: 20.w, top: 86.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: RegisterContainerBody(),
        ),
      ),
    );
  }
}

class TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 80; // Radius of the circular notch
    double centerX = size.width / 2;
    Path path = Path();
    path.lineTo(0, 60); // Start a bit down for the curve
    path.quadraticBezierTo(0, 18, 50, 12);

    path.lineTo(centerX - radius, 0);

    // Create top circular notch
    path.arcTo(
      Rect.fromCircle(center: Offset(centerX, 0), radius: radius),
      pi,
      -pi,
      false,
    );
    path.lineTo(size.width - 50, 12);
    path.quadraticBezierTo(size.width, 18, size.width, 60);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
