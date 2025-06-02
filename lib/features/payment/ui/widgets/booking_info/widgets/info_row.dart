import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/text_styles.dart';
import '../../../../logic/booking_cubit.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                context.read<BookingCubit>().coachData?.fullName ?? '',
                style: TextStyles.font18Black500(),
              ),
              const Spacer(),
              const Icon(
                Icons.star,
                size: 20,
                color: Colors.amber,
              ),
              Text(
                '4.8',
                style: TextStyles.font14Black400(),
              ),
              Text(
                ' (25)',
                style: TextStyles.font14Grey400(),
              ),
            ],
          ),
          Text(
            context.read<BookingCubit>().coachData?.bio ?? ' ',
            style: TextStyles.font15Grey500(),
          )
        ],
      ),
    );
  }
}
