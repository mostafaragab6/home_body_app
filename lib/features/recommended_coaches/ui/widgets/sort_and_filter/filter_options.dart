import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/recommended_coaches/logic/recommended_coaches_cubit.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';

// ignore: must_be_immutable
class FilterOptions extends StatefulWidget {
  BuildContext parentContext;
  FilterOptions({required this.parentContext, super.key});

  @override
  State<FilterOptions> createState() => _FilterOptionsState();
}

class _FilterOptionsState extends State<FilterOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 68.w,
            height: 2.h,
            color: AppColors.grey,
          ),
        ),
        SizedBox(height: 30.h),
        Text(
          'Filter',
          style: TextStyles.font20Black700(),
        ),
        SizedBox(
          height: 30.h,
        ),
        _buildSection(
          title: 'Training Type',
          options: ['Home', 'Gym', 'Online'],
        ),
        _buildSection(
          title: 'Specialization',
          options: ['Yoga', 'Cardio', 'CrossFit', 'Personal Training'],
        ),
        _buildSection(
          title: 'Price Range',
          options: ['50-120 SAR', '300-500 SAR'],
        )
      ],
    );
  }

  Widget _buildSection({required String title, required List<String> options}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font14Black700(),
        ),
        SizedBox(height: 3.h),
        Divider(
          color: AppColors.lighterGrey,
          height: 1.h,
          thickness: 2,
        ),
        SizedBox(height: 10.h),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: options.map((option) {
            return FilterChip(
              color: WidgetStatePropertyAll(Colors.white),
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.parentContext
                          .read<RecommendedCoachesCubit>()
                          .selectedOptions
                          .contains(option)
                      ? Icon(
                          Icons.check_circle,
                          color: AppColors.primary,
                        )
                      : Icon(
                          Icons.circle_outlined,
                          color: AppColors.lightGrey,
                        ),
                  const SizedBox(width: 8),
                  Text(
                    option,
                    style: TextStyles.font14Black400(),
                  ),
                ],
              ),
              onSelected: (selected) {
                setState(() {
                  if (!widget.parentContext
                      .read<RecommendedCoachesCubit>()
                      .selectedOptions
                      .contains(option)) {
                    widget.parentContext
                        .read<RecommendedCoachesCubit>()
                        .selectedOptions
                        .add(option);
                  } else {
                    widget.parentContext
                        .read<RecommendedCoachesCubit>()
                        .selectedOptions
                        .remove(option);
                  }
                });
              },

              selected: false, // You can manage state to track selected options
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
