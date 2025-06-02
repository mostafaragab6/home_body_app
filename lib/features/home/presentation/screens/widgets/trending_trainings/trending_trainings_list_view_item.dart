import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/theming/text_styles.dart';

import '../../../../../../core/theming/app_colors.dart';

// ignore: must_be_immutable
class TrendingTrainingsListViewItem extends StatelessWidget {
  int index;
  TrendingTrainingsListViewItem({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: index == 0 ? 16.0.w : 0.0,
        end: index == 4 ? 16.0.w : 0.0,
      ),
      child: SizedBox(
        width: 152.w,
        child: Card(
          child: Column(
            children: [
              Container(
                width: 152.w,
                height: 199.h,
                decoration: BoxDecoration(
                  color: AppColors.lighterGrey,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10.r),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(
                  bottom: 18.h,
                  top: 15.h,
                ),
                height: 80.h,
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
                child: Center(
                  child: Text(
                    'Intense Cardio Sessions',
                    style: TextStyles.font16Black600(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
