import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../logic/recommended_coaches_cubit.dart';

// ignore: must_be_immutable
class SortOptions extends StatefulWidget {
  BuildContext parentContext;
  SortOptions({required this.parentContext, super.key});

  @override
  State<SortOptions> createState() => _SortOptionsState();
}

class _SortOptionsState extends State<SortOptions> {
  final List<Map<String, String>> options = [
    {'label': 'Top Rated', 'value': 'topRated'},
    {'label': 'Price: Low To High', 'value': 'lowToHigh'},
    {'label': 'Price: High To Low', 'value': 'highToLow'},
    {'label': 'Nearest Location', 'value': 'nearestLocation'},
  ];
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
          'Sort By',
          style: TextStyles.font20Black700(),
        ),
        SizedBox(height: 30.h),
        Column(
          children: options.map((option) {
            return ListTile(
              minTileHeight: 10.h,
              title: Text(option['label']!, style: TextStyles.font14Black500()),
              trailing: Radio<String>(
                value: option['value']!,
                groupValue: widget.parentContext
                    .read<RecommendedCoachesCubit>()
                    .selectedValue,
                activeColor: Colors.black,
                onChanged: (value) {
                  setState(() {
                    widget.parentContext
                        .read<RecommendedCoachesCubit>()
                        .selectedValue = value!;
                  });
                },
              ),
              onTap: () {
                setState(() {
                  widget.parentContext
                      .read<RecommendedCoachesCubit>()
                      .selectedValue = option['value']!;
                });
              },
            );
          }).toList(),
        )
      ],
    );
  }
}
