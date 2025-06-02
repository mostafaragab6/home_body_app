import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../data/models/get_trainers_response.dart';

// ignore: must_be_immutable
class RecommendedTrainersListViewItem extends StatelessWidget {
  int index;
  Trainers data;
  RecommendedTrainersListViewItem(
      {required this.data, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: index == 0 ? 16.0.w : 0.0,
        end: index == 2 ? 16.0.w : 0.0,
      ),
      child: SizedBox(
        width: 255.w,
        child: Card(
          child: Column(
            children: [
              Container(
                width: 255.w,
                height: 160.h,
                decoration: BoxDecoration(
                  color: AppColors.lighterGrey,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10.r),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(
                    start: 14.w, bottom: 10.h, top: 10.h),
                height: 130.h,
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
                child: Row(
                  spacing: 8.w,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'ahmed yassen',
                            style: TextStyles.font18Black500(),
                          ),
                          Text(
                            'Body Building Trainer',
                            style: TextStyles.font14Grey400(),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(end: 14.0.w),
                            child: Row(
                              children: [
                                Text(
                                  'From',
                                  style: TextStyles.font14Grey400(),
                                ),
                                const Spacer(),
                                Text(
                                  '120EGP/session',
                                  style: TextStyles.font14Primary400().copyWith(
                                      color: AppColors.primary.withOpacity(0.7),
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          AppColors.primary.withOpacity(0.7),
                                      height: 1.2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
