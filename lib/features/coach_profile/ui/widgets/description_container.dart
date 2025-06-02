import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';

class DescriptionContainer extends StatelessWidget {
  const DescriptionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 20.h),
      padding: EdgeInsetsDirectional.only(
        start: 30.w,
        end: 27.w,
        top: 25.h,
        bottom: 17.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: AppColors.moreLightGrey,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 13,
            spreadRadius: 0,
            color: AppColors.darkGrey.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'DESCRIPTION',
            style: TextStyles.font16Primary400(),
          ),
          SizedBox(
            height: 14.h,
          ),
          Text(
            '• Bio/Background :',
            style: TextStyles.font13Black500(),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.0.w),
            child: Text(
              'I am a passionate fitness coach with over 8 years of experience helping clients achieve their goals through tailored programs and continuous motivation.',
              style: TextStyles.font12Black400(),
            ),
          ),
          Text(
            '• TRAINING PHILOSOPHY :',
            style: TextStyles.font13Black500(),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.0.w),
            child: Text(
              'Training isn\'t just physical — it\'s a mindset. I focus on building sustainable fitness habits that fit your lifestyle.',
              style: TextStyles.font12Black400(),
            ),
          ),
          Text(
            '• EDUCATION AND CERTIFICATIONS :',
            style: TextStyles.font13Black500(),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.0.w),
            child: Text(
              '- Bachelor\'s Degree in Sports Science (University of XYZ)\n- NASM Certified Personal Trainer\n- ACE Health Coach Certification',
              style: TextStyles.font12Black400(),
            ),
          ),
          Text(
            '• AREAS OF EXPERTISE :',
            style: TextStyles.font13Black500(),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 8.0.w),
            child: Text(
              '- Weight Management\n- Post-Injury Rehabilitation\n- Strength And Conditioning\n- Functional Fitness',
              style: TextStyles.font12Black400(),
            ),
          ),
        ],
      ),
    );
  }
}
