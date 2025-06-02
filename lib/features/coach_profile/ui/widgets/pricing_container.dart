import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';

class PricingContainer extends StatelessWidget {
  const PricingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
            'PRICING',
            style: TextStyles.font16Primary400(),
          ),
          SizedBox(
            height: 14.h,
          ),
          Text(
            '• 1-on-1 Training : \$50 per hour',
            style: TextStyles.font13Black500(),
          ),
          Text(
            '• Group Classes : \$20 per person',
            style: TextStyles.font13Black500(),
          ),
          Text(
            '• Online Coaching : \$35 per session',
            style: TextStyles.font13Black500(),
          ),
          Text(
            '• Custom Workout Plans : \$80 (4-week plan)',
            style: TextStyles.font13Black500(),
          ),
          Text(
            '• Nutrition Planning : \$50 (monthly support)',
            style: TextStyles.font13Black500(),
          ),
          SizedBox(
            height: 14.h,
          ),
          Text(
            ' SESSION DURATION OPTIONS',
            style: TextStyles.font16Primary400(),
          ),
          SizedBox(
            height: 14.h,
          ),
          Text(
            '• 30 MINUTES',
            style: TextStyles.font13Black500(),
          ),
          Text(
            '• 45 MINUTES',
            style: TextStyles.font13Black500(),
          ),
          Text(
            '• 60 MINUTES',
            style: TextStyles.font13Black500(),
          ),
        ],
      ),
    );
  }
}
