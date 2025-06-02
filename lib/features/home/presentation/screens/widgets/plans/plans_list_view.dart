import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/text_styles.dart';
import '../../../../data/constants/home_constants.dart';
import 'plans_list_view_item.dart';

class PlansListView extends StatelessWidget {
  const PlansListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: 16.0.w),
          child: Text(
            'What Is Your Goals?',
            style: TextStyles.font16Black500(),
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        SizedBox(
          height: 170.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => PlansListViewItem(index: index),
            itemCount: HomeConstants.plans.length,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 15.w,
            ),
          ),
        ),
      ],
    );
  }
}
