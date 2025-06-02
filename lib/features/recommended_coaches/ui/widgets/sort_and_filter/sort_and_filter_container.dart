import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/recommended_coaches/ui/widgets/sort_and_filter/filter_options.dart';
import 'package:home_body/features/recommended_coaches/ui/widgets/sort_and_filter/sort_options.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';

class SortAndFilterContainer extends StatefulWidget {
  const SortAndFilterContainer({super.key});

  @override
  State<SortAndFilterContainer> createState() => _SortAndFilterContainerState();
}

class _SortAndFilterContainerState extends State<SortAndFilterContainer> {
  String selectedValue = 'lowToHigh';

  final List<Map<String, String>> options = [
    {'label': 'Top Rated', 'value': 'topRated'},
    {'label': 'Price: Low To High', 'value': 'lowToHigh'},
    {'label': 'Price: High To Low', 'value': 'highToLow'},
    {'label': 'Nearest Location', 'value': 'nearestLocation'},
  ];

  String isSelected = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 'sort';
                });
                _showBottomSheet('sort', context);
              },
              child: Container(
                padding: EdgeInsetsDirectional.only(start: 25.w),
                width: 150.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color:
                      isSelected == 'sort' ? AppColors.primary : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/SortingArrows.png',
                      color: isSelected == 'sort' ? Colors.white : Colors.black,
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Text(
                      'Sort By',
                      style: TextStyles.font14Black500().copyWith(
                        color:
                            isSelected == 'sort' ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 1.w,
            height: 30.h,
            color: AppColors.lightGrey,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 'filter';
                });

                _showBottomSheet('filter', context);
              },
              child: Container(
                padding: EdgeInsetsDirectional.only(start: 35.w),
                width: 150.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color:
                      isSelected == 'filter' ? AppColors.primary : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/Filter.png',
                      color:
                          isSelected == 'filter' ? Colors.white : Colors.black,
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Text(
                      'Filter',
                      style: TextStyles.font14Black500().copyWith(
                        color: isSelected == 'filter'
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(
    String type,
    BuildContext parentContext,
  ) {
    showModalBottomSheet(
      useSafeArea: true,
      context: parentContext,
      isScrollControlled: true,
      isDismissible: true, // Allows tap outside to dismiss
      backgroundColor: Colors.transparent,

      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (context, controller) {
            return Container(
              height: type == "sort" ? 362.h : 499.h,
              padding: EdgeInsetsDirectional.only(
                top: 25.h,
                start: 30.w,
                end: 30.w,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: type == 'sort'
                  ? SortOptions(
                      parentContext: parentContext,
                    )
                  : FilterOptions(
                      parentContext: parentContext,
                    ),
            );
          },
        );
      },
    ).then((value) {
      setState(() {
        isSelected = '';
      });
    });
  }
}
