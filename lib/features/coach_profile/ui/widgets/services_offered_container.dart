import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';

class ServicesOfferedContainer extends StatelessWidget {
  const ServicesOfferedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 20.h),
      padding: EdgeInsetsDirectional.only(
        start: 30.w,
        end: 33.w,
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
            'SERVICES OFFERED',
            style: TextStyles.font16Primary400(),
          ),
          SizedBox(
            height: 14.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildItem(
                'assets/icons/Weightlifting.png',
                '1-on-1\nTraining',
                'Personalized in-\nperson sessions',
              ),
              _buildItem(
                'assets/icons/Group 302.png',
                'Group\nClasses',
                'High-energy group sessions for motivation and fun',
              ),
              _buildItem(
                'assets/icons/Online Fitness.png',
                'Online coaching',
                'Virtual sessions via Zoom/Teams',
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            spacing: 45.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildItem(
                'assets/icons/Treadmill.png',
                'CUSTOM WORKOUT PLANS',
                'Tailored programs designed for home or gym workouts',
              ),
              _buildItem(
                'assets/icons/Healthy Food.png',
                'NUTRATION PLANNING',
                'Meal guidance to complement your training goals',
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItem(String image, String title, String subTitle) {
    return Expanded(
      child: Column(
        spacing: 12.h,
        children: [
          Image.asset(image),
          Text(
            title,
            style: TextStyles.font12Black500(),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          Text(
            subTitle,
            style: TextStyles.font11Black400(),
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
