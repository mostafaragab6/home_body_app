import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/theming/app_colors.dart';

import '../../../../core/theming/text_styles.dart';

class ReviewsContainer extends StatelessWidget {
  const ReviewsContainer({super.key});

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
        spacing: 14.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'REVIEWS',
            style: TextStyles.font16Primary400(),
          ),
          _review(),
          SizedBox(
            height: 9.h,
          ),
          _review(),
        ],
      ),
    );
  }

  Widget _review() {
    return Container(
      width: 334.w,
      padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 25.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(
          color: AppColors.primary,
        ),
      ),
      child: Column(
        spacing: 5.h,
        children: [
          Row(
            spacing: 10.w,
            children: [
              CircleAvatar(
                radius: 25,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Yousef Ahmed',
                          style: TextStyles.font14Black500(),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 17.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 17.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 17.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 17.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 17.sp,
                        ),
                      ],
                    ),
                    Text(
                      '28 April, 2022',
                      style: TextStyles.font10Black400(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            'Lorem ipsum dolor sit amet,  adipiscing elit.Sed at gravida nulla tempor, neque. Duis quam ut netus donec enim vitae ac diam. ',
            style: TextStyles.font11Black600(),
          )
        ],
      ),
    );
  }
}
