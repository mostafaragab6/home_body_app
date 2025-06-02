import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/text_styles.dart';

class UpperContainer extends StatelessWidget {
  const UpperContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          top: 83.h,
          start: 376.w,
          end: 10.w,
        ),
        width: double.infinity,
        height: 248.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.5),
              Colors.transparent
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.loginScreen,
              (route) => false,
            );
          },
          child: Text(
            'Skip',
            style: TextStyles.font17White500(),
          ),
        ),
      ),
    );
  }
}
