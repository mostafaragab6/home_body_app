import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/helpers/shared_prefs_helper.dart';
import 'package:home_body/core/routing/routes.dart';
import 'package:home_body/core/shared/shared_pref_keys.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/theming/text_styles.dart';
import '../../../../core/shared/widgets/app_text_button.dart';
import '../../constants/constants.dart';

class LowerContainer extends StatelessWidget {
  const LowerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 248.h,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.4),
              Colors.transparent
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: [
            SmoothPageIndicator(
              controller: Constants.pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey,
                  expansionFactor: 3,
                  dotHeight: 5,
                  dotWidth: 15,
                  spacing: 6),
            ),
            SizedBox(
              height: 39.h,
            ),
            Text(
              Constants.title[Constants.currentIndex],
              style: TextStyles.font24White700(),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              Constants.supTitle[Constants.currentIndex],
              style: TextStyles.font17LightGrey400(),
            ),
            SizedBox(
              height: 25.h,
            ),
            Constants.currentIndex == 2
                ? Column(
                    spacing: 5.h,
                    children: [
                      AppTextButton(
                        buttonWidget: Text(
                          'Sign In',
                          style: TextStyles.font17White600(),
                        ),
                        onPressed: () async {
                          await SharedPrefHelper.setData(
                              SharedPrefKeys.onBoardingSeen, true);
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            Routes.loginScreen,
                            (route) => false,
                          );
                        },
                      ),
                      AppTextButton(
                        backgroundColor: Colors.white,
                        // textStyle: TextStyles.font17Primary600(),
                        buttonWidget: Text(
                          'Sign In',
                          style: TextStyles.font17Primary600(),
                        ),
                        onPressed: () async {
                          await SharedPrefHelper.setData(
                              SharedPrefKeys.onBoardingSeen, true);
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            Routes.loginScreen,
                            (route) => false,
                          );
                        },
                      ),
                    ],
                  )
                : AppTextButton(
                    buttonWidget: Text(
                      'Continue',
                      style: TextStyles.font17White600(),
                    ),
                    onPressed: () {
                      Constants.pageController.nextPage(
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.easeInOut,
                      );
                    },
                  )
          ],
        ),
      ),
    );
  }
}
