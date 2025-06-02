import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'voyage_time_am_pm_picker.dart';
import 'voyage_time_hour_picker.dart';
import 'voyage_time_minute_picker.dart';

class VoyageTime extends StatefulWidget {
  const VoyageTime({super.key});

  @override
  State<VoyageTime> createState() => _VoyageTimeState();
}

class _VoyageTimeState extends State<VoyageTime> {
  int selectedHour = 9;
  int selectedMinute = 30;
  String selectedPeriod = "AM";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Hour Picker
        const VoyageTimeHourPicker(),
        SizedBox(
          width: 10.w,
        ),

        // Minute Picker
        const VoyageTimeMinutePicker(),
        SizedBox(width: 10.w),

        // AM/PM Picker
        const VoyageTimeAmPmPicker(),
      ],
    );
  }
}
