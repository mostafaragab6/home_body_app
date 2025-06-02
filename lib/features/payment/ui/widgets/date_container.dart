import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 41.h),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            offset: Offset(0, 0),
            blurRadius: 6.0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 41.0.w),
        child: Stack(
          children: [
            Container(
              width: 343.w,
              height: 145.h,
              decoration: BoxDecoration(
                color: AppColors.lighterGrey,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.lightGrey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  dateContainer('right', '18Tue Sep', 'Time: 7:00 AM'),
                  dateContainer('left', '18Tue Sep', 'Time: 3:00 PM'),
                ],
              ),
            ),
            Positioned(
              top: 40.h,
              left: 152.w,
              child: CircleAvatar(
                backgroundColor: AppColors.primary,
                radius: 18,
                child: Image.asset('assets/icons/Icon Arrow.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dateContainer(String direction, String date, String time) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 13.h),
      width: 170.4.w,
      decoration: BoxDecoration(
        border: Border(
          right: direction == 'right'
              ? const BorderSide(
                  color: AppColors.lightGrey,
                )
              : BorderSide.none,
          left: direction == 'left'
              ? const BorderSide(
                  color: AppColors.lightGrey,
                )
              : BorderSide.none,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${date.substring(0, 2)}\n',
                  style: TextStyles.font25Black400(),
                ),
                TextSpan(
                  text: date.substring(2, 5),
                  style: TextStyles.font15Black400(),
                ),
                TextSpan(
                  text: date.substring(5),
                  style: TextStyles.font15Grey400(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            color: AppColors.lightGrey,
            thickness: 1,
          ),
          Text(
            time,
            style: TextStyles.font16Black500(),
          )
        ],
      ),
    );
  }
}
