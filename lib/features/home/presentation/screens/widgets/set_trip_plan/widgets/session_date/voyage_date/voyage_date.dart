import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../../../core/theming/text_styles.dart';
import '../../../../../../bloc/home_cubit.dart';

class VoyageDate extends StatefulWidget {
  const VoyageDate({super.key});

  @override
  State<VoyageDate> createState() => _VoyageDateState();
}

class _VoyageDateState extends State<VoyageDate> {
  int selectedDate = DateTime.now().day;
  int selectedMonth = DateTime.now().month;
  int selectedYear = DateTime.now().year;
  List<DateTime> daysInMonth = [];

  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

	  @override
	  void initState() {
	    super.initState();
	    _generateMonthDays(selectedYear, selectedMonth);
	  }

  void _generateMonthDays(int year, int month) {
    daysInMonth.clear();
    int daysCount = DateTime(year, month + 1, 0).day;
    for (int i = 1; i <= daysCount; i++) {
      daysInMonth.add(DateTime(year, month, i));
    }
    setState(() {}); // Refresh UI
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 13.h),
      color: AppColors.lighterGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 32.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Select your Date",
                  style: TextStyles.font16Black600(),
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: DropdownButton<int>(
                    padding: EdgeInsetsDirectional.only(start: 5.w),
                    dropdownColor: Colors.white,
                    value: selectedMonth,
                    items: List.generate(12, (index) {
                      return DropdownMenuItem(
                        enabled:
                            index + 1 >= DateTime.now().month ? true : false,
                        value: index + 1,
                        child: Text(
                          months[index],
                          style: index + 1 >= DateTime.now().month
                              ? TextStyles.font16Black400()
                              : TextStyles.font16DarkGrey500(),
                        ),
                      );
                    }),
                    onChanged: (newMonth) {
                      setState(() {
                        selectedMonth = newMonth!;
                        _generateMonthDays(selectedYear, selectedMonth);
                        context.read<HomeCubit>().selectedDate =
                            '$selectedYear-$selectedMonth-$selectedDate';
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: daysInMonth.length,
              itemBuilder: (context, index) {
                DateTime date = daysInMonth[index];
                bool isSelected = selectedDate == date.day;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDate = date.day;
                      context.read<HomeCubit>().selectedDate =
                          '${date.year}-${date.month}-${date.day}';
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      children: [
                        Text(
                          DateFormat.E().format(date).substring(0, 1),
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.primary
                                : Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            date.day.toString(),
                            style: isSelected
                                ? TextStyles.font17White500()
                                : TextStyles.font16Black600(),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
