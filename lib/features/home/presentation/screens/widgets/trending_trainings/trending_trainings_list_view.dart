import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/text_styles.dart';
import 'trending_trainings_list_view_item.dart';

class TrendingTrainingsListView extends StatelessWidget {
  const TrendingTrainingsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: 16.0.w),
          child: Text(
            'Trending Trainings',
            style: TextStyles.font16Black500(),
          ),
        ),
        SizedBox(
          height: 27.h,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 28.h),
          child: SizedBox(
            height: 288.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  TrendingTrainingsListViewItem(index: index),
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 16.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
