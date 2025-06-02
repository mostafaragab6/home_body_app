import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/shared/widgets/app_text_button.dart';

import '../../../logic/booking_cubit.dart';
import '../date_container.dart';
import 'widgets/details.dart';
import 'widgets/info_row.dart';
import 'widgets/location_row.dart';
import 'widgets/session_cost.dart';

class BookingInfo extends StatelessWidget {
  const BookingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 90.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                    start: 16.0.w,
                    end: 16.0.w,
                  ),
                  width: 398.w,
                  height: 240.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: AppColors.lighterGrey,
                  ),
                ),
                SizedBox(
                  height: 13.h,
                ),
                const LocationRow(),
                SizedBox(
                  height: 13.h,
                ),
                const InfoRow(),
                SizedBox(
                  height: 13.h,
                ),
                const Details(),
                SizedBox(
                  height: 30.h,
                ),
                const DateContainer(),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 17.0.w),
                  child: Text(
                    'Sessions Cost',
                    style: TextStyles.font18Primary500(),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                const SessionCost(),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 30.0.h),
            child: AppTextButton(
              buttonWidget: Text(
                'RESERVE',
                style: TextStyles.font17White600(),
              ),
              onPressed: () {
                context.read<BookingCubit>().pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              },
            ),
          ),
        ),
      ],
    );
  }
}
