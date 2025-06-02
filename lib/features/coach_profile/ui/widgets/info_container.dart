import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/shared/widgets/app_text_button.dart';
import 'package:home_body/features/home/data/models/get_trainers_response.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';

// ignore: must_be_immutable
class InfoContainer extends StatelessWidget {
  Trainers? data;
  InfoContainer({required this.data, super.key});

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
            offset: const Offset(0, 0),
            blurRadius: 13,
            spreadRadius: 0,
            color: AppColors.darkGrey.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        spacing: 14.h,
        children: [
          _detailsRow(),
          Text(
            'Empowering You To Become Your Strongest Self',
            style: TextStyles.font12Black600(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0.w),
            child: Row(
              spacing: 11.w,
              children: [
                _container('4', 'Work\nExperience'),
                _container('32', 'Completed\nWorkouts'),
                _container('21', 'Active\nClients'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: Row(
              spacing: 66.w,
              children: [
                AppTextButton(
                  buttonWidth: 123.w,
                  buttonheight: 40.h,
                  buttonWidget: Text(
                    'MESSAGE',
                    style: TextStyles.font12Black600(),
                  ),
                  backgroundColor: AppColors.lightGrey,
                  //textStyle: TextStyles.font12Black600(),
                  onPressed: () {},
                ),
                AppTextButton(
                  buttonWidth: 123.w,
                  buttonheight: 40.h,
                  buttonWidget: Text(
                    'BOOK SESSION',
                    style: TextStyles.font12White600(),
                  ),
                  // textStyle: TextStyles.font12White600(),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _detailsRow() {
    return Row(
      spacing: 10.w,
      children: [
        CircleAvatar(
          radius: 40,
          child: Image.network(
            data?.imageUrl ?? '',
            errorBuilder: (context, error, stackTrace) =>
                Image.asset('assets/imgs/booking_complete.png'),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    data?.fullName ?? '',
                    style: TextStyles.font20Black500(),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 17.sp,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '4.8',
                          style: TextStyles.font14Black400(),
                        ),
                        TextSpan(
                          text: ' (25)',
                          style: TextStyles.font14LightGrey400(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                data?.bio ?? '',
                style: TextStyles.font15Grey400(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _container(String title, String desc) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 15.h, start: 3.w, end: 3.w),
      width: 96.w,
      height: 94.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(19),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 13,
            spreadRadius: 0,
            color: AppColors.darkGrey.withOpacity(0.3),
          ),
        ],
      ),
      child: Center(
        child: Column(
          children: [
            Text(
              title,
              style: TextStyles.font20Black500(),
            ),
            Text(
              desc,
              style: TextStyles.font12LightGrey400(),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
