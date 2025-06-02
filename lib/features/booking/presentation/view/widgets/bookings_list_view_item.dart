import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/widgets/app_text_button.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';

class BookingsListViewItem extends StatelessWidget {
  const BookingsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 25.w),
      child: Card(
        child: Column(
          children: [
            Container(
              height: 153.h,
              decoration: BoxDecoration(
                color: AppColors.lighterGrey,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10.r),
                ),
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(
                start: 16.w,
                end: 16.w,
                bottom: 6.h,
                top: 20.h,
              ),
              height: 160.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 4.0),
                      color: AppColors.lightGrey,
                      blurRadius: 4.0,
                      spreadRadius: 0.0),
                ],
              ),
              child: Column(
                spacing: 4.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Yousef Ahmed',
                        style: TextStyles.font18Black500(),
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
                    'bodybuilding trainer, (Home & Online)',
                    style: TextStyles.font14LightGrey400(),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'From ',
                      style: TextStyles.font14LightGrey400(),
                      children: [
                        TextSpan(
                          text: '120EGP/session',
                          style: TextStyles.font14Primary500(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/Location.png'),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Dammam',
                        style: TextStyles.font14Black400(),
                      ),
                      const Spacer(),
                      AppTextButton(
                        buttonWidth: 95.w,
                        horizontalPadding: 40.h,
                        buttonWidget: Row(
                          spacing: 5.w,
                          children: [
                            Image.asset('assets/icons/Video Call.png'),
                            Text(
                              'JOIN',
                              style: TextStyles.font14White400(),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
