import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/shared/widgets/app_text_button.dart';
import '../../../logic/booking_cubit.dart';
import 'widgets/personal_info_form.dart';
import 'widgets/switch_button.dart';

// ignore: must_be_immutable
class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 0.8.sh,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Column(
                spacing: 17.h,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInfoForm(),
                  Row(
                    spacing: 75.w,
                    children: [
                      Expanded(
                        child: Text(
                          'Save this info to your next bookings Autofill next time',
                          style: TextStyles.font14Grey400(),
                        ),
                      ),
                      const SwitchButton(),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 690.h,
              left: 75.w,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0.h),
                child: AppTextButton(
                  buttonWidget: Text(
                    'NEXT STEP',
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
        ),
      ),
    );
  }
}
