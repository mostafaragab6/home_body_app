import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 65.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/icons/Gmail.png'),
        Image.asset('assets/icons/apple.png'),
        Image.asset('assets/icons/facebook.png'),
      ],
    );
  }
}
