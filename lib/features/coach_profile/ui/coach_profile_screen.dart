import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/shared/widgets/app_text_button.dart';
import 'package:home_body/features/coach_profile/ui/widgets/arrow_back_and_page_name.dart';
import 'package:home_body/features/coach_profile/ui/widgets/description_container.dart';
import 'package:home_body/features/coach_profile/ui/widgets/info_container.dart';
import 'package:home_body/features/coach_profile/ui/widgets/pricing_container.dart';
import 'package:home_body/features/coach_profile/ui/widgets/reviews_container.dart';
import 'package:home_body/features/coach_profile/ui/widgets/services_offered_container.dart';
import 'package:home_body/features/home/data/models/get_trainers_response.dart';
import 'package:home_body/features/home/presentation/bloc/home_cubit.dart';

import '../../../core/theming/text_styles.dart';

// ignore: must_be_immutable
class CoachProfileScreen extends StatelessWidget {
  Trainers? data;
  CoachProfileScreen({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<HomeCubit>().pageController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 16.0.w,
              end: 16.w,
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    const ArrowBackAndPageName(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 80.0.h),
                          child: Column(
                            children: [
                              InfoContainer(
                                data: data,
                              ),
                              const DescriptionContainer(),
                              const ServicesOfferedContainer(),
                              const PricingContainer(),
                              const ReviewsContainer()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(bottom: 25.0.h),
                    child: AppTextButton(
                      buttonWidget: Text(
                        'BOOK NOW',
                        style: TextStyles.font17White600(),
                      ),
                      onPressed: () {
                        context.read<HomeCubit>().pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
