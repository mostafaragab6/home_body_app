import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';

class NotificationListViewItem extends StatelessWidget {
  const NotificationListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 18.w, end: 18.w, top: 30.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.moreLightGrey,
        border: Border.all(
          color: AppColors.primary,
        ),
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        spacing: 11.w,
        children: [
          CircleAvatar(
            radius: 30,
            child: ClipOval(
              child: Image.network(
                '',
                errorBuilder: (context, error, stackTrace) =>
                    Image.asset('assets/imgs/coach.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Booking Accepted',
                  style: TextStyles.font14Black500(),
                ),
                Text(
                  'Your session with Trainer Yossef Ahmed has been confirmed for28 May, 2022',
                  style: TextStyles.font10Black400(),
                  maxLines: 2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
