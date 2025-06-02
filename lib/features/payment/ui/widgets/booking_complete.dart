import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/shared/widgets/app_text_button.dart';

class BookingComplete extends StatelessWidget {
  const BookingComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsetsDirectional.only(
            top: 91.h,
          ),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.primary,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Booking Complete',
                  style: TextStyles.font28Black700(),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Your Coach is about to arrive',
                  style: TextStyles.font17LightGrey400(),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Image.asset('assets/imgs/booking_complete.png'),
                SizedBox(
                  height: 36.h,
                ),
                Text(
                  'A confirmation Email will be sent out to you soon',
                  style: TextStyles.font14Black400(),
                ),
                SizedBox(
                  height: 150.h,
                ),
                AppTextButton(
                  buttonWidget: Text(
                    'Done',
                    style: TextStyles.font17White600(),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.layoutScreen, (route) => false);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
