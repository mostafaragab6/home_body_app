import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/booking/presentation/view/widgets/booking_list_view.dart';

import '../../../../core/theming/app_colors.dart';

class BookingSceen extends StatelessWidget {
  const BookingSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor,
        elevation: 0, // Remove shadow completely
        scrolledUnderElevation: 0,
        leading: const SizedBox(),
        title: const Text('Bookings'),
        centerTitle: true,
        toolbarHeight: 40.h,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 30.0.h, bottom: 5.h),
        child: const BookingListView(),
      ),
    );
  }
}
