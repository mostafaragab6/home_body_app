import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/home/presentation/bloc/home_cubit.dart';
import 'package:home_body/features/home/presentation/screens/widgets/set_trip_plan/widgets/session_date/voyage_date/voyage_date.dart';
import 'package:home_body/features/home/presentation/screens/widgets/set_trip_plan/widgets/session_date/voyage_time/voyage_time.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/shared/widgets/app_text_button.dart';
import '../../../../../../core/shared/widgets/positioned_container.dart';

class SessionDate extends StatelessWidget {
  const SessionDate({super.key});

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
      child: Stack(
        children: [
          Image.asset('assets/imgs/session_date.png'),
          PositionedContainer(
            height: 451,
            child: positionedContainerContent(),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: 30.0.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AppTextButton(
                buttonWidget: Text(
                  'Confirm',
                  style: TextStyles.font17White600(),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.bookingScreen,
                    arguments: context.read<HomeCubit>().profile,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget positionedContainerContent() {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Text(
            'Session Date',
            style: TextStyles.font16Black500(),
          ),
        ),
        VoyageDate(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Text(
            'Session Time',
            style: TextStyles.font16Black500(),
          ),
        ),
        VoyageTime(),
      ],
    );
  }
}
