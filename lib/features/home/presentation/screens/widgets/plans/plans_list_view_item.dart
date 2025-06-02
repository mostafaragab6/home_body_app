import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../data/constants/home_constants.dart';
import '../../../bloc/home_cubit.dart';

// ignore: must_be_immutable
class PlansListViewItem extends StatefulWidget {
  int index;

  PlansListViewItem({required this.index, super.key});

  @override
  State<PlansListViewItem> createState() => _PlansListViewItemState();
}

class _PlansListViewItemState extends State<PlansListViewItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          HomeConstants.plansModel.plansData[widget.index].isSelected =
              !HomeConstants.plansModel.plansData[widget.index].isSelected!;
        });

        context.read<HomeCubit>().pageController.nextPage(
            duration: const Duration(
              milliseconds: 500,
            ),
            curve: Curves.easeIn);
      },
      child: Container(
        margin: widget.index == 0
            ? EdgeInsetsDirectional.only(start: 16.w)
            : widget.index == 3
                ? EdgeInsetsDirectional.only(end: 16.w)
                : null,
        padding: EdgeInsetsDirectional.only(start: 10.w, bottom: 18.h),
        width: 107.w,
        height: 149.h,
        decoration: BoxDecoration(
          color: HomeConstants.plansModel.plansData[widget.index].isSelected!
              ? AppColors.primary
              : Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1.0, 1.0),
              color: AppColors.lightGrey.withOpacity(0.5),
              blurRadius: 11.0,
              spreadRadius: 0.0,
            ),
          ],
          borderRadius: BorderRadius.circular(
            19,
          ),
        ),
        child: Column(
          spacing: 12.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: AppColors.lighterGrey,
            ),
            Text(
              HomeConstants.plansModel.plansData[widget.index].desc!,
              style:
                  HomeConstants.plansModel.plansData[widget.index].isSelected!
                      ? TextStyles.font14White400()
                      : TextStyles.font14Black400(),
            )
          ],
        ),
      ),
    );
  }
}
