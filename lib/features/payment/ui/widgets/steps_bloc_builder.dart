import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';
import '../../logic/booking_cubit.dart';
import '../../logic/booking_state.dart';

class StepsBlocBuilder extends StatelessWidget {
  const StepsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingCubit, BookingState>(
      builder: (context, state) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 32.w,
                height: 32.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              Container(
                width: 81.w,
                height: 2.h,
                color: context.read<BookingCubit>().currentIndex > 0
                    ? AppColors.primary
                    : AppColors.lightGrey,
              ),
              Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.read<BookingCubit>().currentIndex > 0
                      ? AppColors.primary
                      : Colors.white,
                  border: context.read<BookingCubit>().currentIndex > 0
                      ? Border.all(style: BorderStyle.none)
                      : Border.all(
                          width: 2.0,
                          color: AppColors.lightGrey,
                        ),
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              Container(
                width: 81.w,
                height: 2.h,
                color: context.read<BookingCubit>().currentIndex > 1
                    ? AppColors.primary
                    : AppColors.lightGrey,
              ),
              Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.read<BookingCubit>().currentIndex > 1
                      ? AppColors.primary
                      : Colors.white,
                  border: context.read<BookingCubit>().currentIndex > 1
                      ? Border.all(style: BorderStyle.none)
                      : Border.all(
                          width: 2.0,
                          color: AppColors.lightGrey,
                        ),
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 17.h,
          ),
          Row(
            spacing: 38.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Booking Info',
                style: TextStyles.font12Primary500(),
              ),
              Text(
                'Personal Info',
                style: context.read<BookingCubit>().currentIndex > 0
                    ? TextStyles.font12Primary500()
                    : TextStyles.font12LightGrey400(),
              ),
              Text(
                'Payment Info',
                style: context.read<BookingCubit>().currentIndex > 1
                    ? TextStyles.font12Primary500()
                    : TextStyles.font12LightGrey400(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget container(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 32.w,
          height: 32.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primary,
          ),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 18,
          ),
        ),
        Container(
          width: 81.w,
          height: 2.h,
          color: context.read<BookingCubit>().currentIndex == 0
              ? AppColors.lightGrey
              : AppColors.primary,
        ),
      ],
    );
  }
}
