import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/home/data/models/get_trainers_response.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../home/presentation/bloc/home_cubit.dart';

// ignore: must_be_immutable
class RecommendedCoachesListViewItem extends StatelessWidget {
  Trainers? data;
  RecommendedCoachesListViewItem({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 25.w),
      child: GestureDetector(
        onTap: () {
          context.read<HomeCubit>().pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
          context.read<HomeCubit>().profile = data;
        },
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
                height: 133.h,
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
                          data?.fullName ?? '',
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
                      data?.bio ?? '',
                      style: TextStyles.font14LightGrey400(),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'From ',
                        style: TextStyles.font14LightGrey400(),
                        children: [
                          TextSpan(
                            text: data?.price.toString() ?? '',
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
                          data?.city ?? '',
                          style: TextStyles.font14Black400(),
                        ),
                        const Spacer(),
                        Text(
                          'View Profile',
                          style: TextStyles.font14Primary400().copyWith(
                            color: AppColors.primary.withOpacity(0.7),
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primary.withOpacity(0.7),
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
