import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/text_styles.dart';

class BookingTerms extends StatelessWidget {
  const BookingTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.only(bottom: 100.h),
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 24.h),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            offset: Offset(0, 0),
            blurRadius: 6.0,
          )
        ],
      ),
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          policyTitle('Change conditions:'),
          bulletPoint('3 days prior trip date free of charge'),
          bulletPoint('less 3 days 50 Per change'),
          policyTitle('Cancellation conditions:'),
          bulletPoint('7 days prior trip date'),
          policyTitle('Amount of security deposit:'),
          bulletPoint('Not Required'),
          policyTitle('Boat licence required:'),
          bulletPoint('Yes (IF the boat without a Skipper)'),
        ],
      ),
    );
  }

  Widget policyTitle(String title) {
    return Text(title, style: TextStyles.font16Black500());
  }

  Widget bulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, top: 4).h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: TextStyles.font13Black300()),
          Expanded(
            child: Text(
              text,
              style: TextStyles.font13Black300(),
            ),
          ),
        ],
      ),
    );
  }
}
