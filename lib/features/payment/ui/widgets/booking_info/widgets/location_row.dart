import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/payment/logic/booking_cubit.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/text_styles.dart';

class LocationRow extends StatelessWidget {
  const LocationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.0.w),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/distance.png',
            color: AppColors.grey,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            context.read<BookingCubit>().coachData?.address ?? '',
            style: TextStyles.font14LightGrey400(),
          ),
        ],
      ),
    );
  }
}
