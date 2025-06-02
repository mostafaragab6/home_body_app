import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../logic/booking_cubit.dart';

class SessionCost extends StatelessWidget {
  const SessionCost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 24.h),
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
      child: Column(
        spacing: 8.h,
        children: [
          // costRow(
          //   'Original Fare',
          //   'EGP 160',
          //   false,
          // ),
          // costRow(
          //   'Service Fee',
          //   'EGP 30',
          //   false,
          // ),
          // costRow(
          //   'Tax',
          //   'EGP 10,50',
          //   false,
          // ),
          // costRow(
          //   'Special Offer',
          //   'EGP - 30',
          //   false,
          // ),
          costRow(
            'Totla Price',
            context.read<BookingCubit>().coachData?.price.toString() ?? '',
            true,
          ),
        ],
      ),
    );
  }

  Widget costRow(String title, String cost, bool isTotal) {
    return Row(
      children: [
        Text(
          title,
          style: isTotal
              ? TextStyles.font18Black500()
              : TextStyles.font18Black500(),
        ),
        const Spacer(),
        Text(
          '$cost\$',
          style: isTotal
              ? TextStyles.font16Black700()
              : TextStyles.font16Black400(),
        ),
      ],
    );
  }
}
