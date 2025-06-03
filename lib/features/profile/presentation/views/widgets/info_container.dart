import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/shared/widgets/app_text_button.dart';
import 'package:home_body/features/profile/data/models/get_profile_response.dart';
import 'package:home_body/features/profile/presentation/bloc/profile_cubit.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';

// ignore: must_be_immutable
class InfoContainer extends StatelessWidget {
  const InfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (BuildContext context, state) {
        if (state is GetProfileLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetProfileSuccessState) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 14.h,
              children: [
                _detailsRow(state.response),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'FITNESS GOAL :',
                      style: TextStyles.font12Black600(),
                    ),
                    TextSpan(
                      text: 'Weight Loss &, Strength',
                      style: TextStyles.font12Black400(),
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    spacing: 66.w,
                    children: [
                      AppTextButton(
                        buttonWidth: 123.w,
                        buttonheight: 32.h,
                        buttonWidget: Text(
                          'EDIT PROFILE',
                          style: TextStyles.font12White600(),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }

  Widget _detailsRow(GetProfileResponse response) {
    return Row(
      spacing: 10.w,
      children: [
        CircleAvatar(
          radius: 40,
          child: Image.network(
            '',
            errorBuilder: (context, error, stackTrace) =>
                Image.asset('assets/imgs/booking_complete.png'),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                response.fullName ?? '',
                style: TextStyles.font20Black500(),
              ),
              Text(
                'Trainer',
                style: TextStyles.font15Grey400(),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/Location.png',
                    color: AppColors.grey,
                  ),
                  Text(
                    response.address ?? '',
                    style: TextStyles.font15Grey400(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
