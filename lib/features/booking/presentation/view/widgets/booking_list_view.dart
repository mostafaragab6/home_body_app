import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/booking/presentation/view/widgets/bookings_list_view_item.dart';

class BookingListView extends StatelessWidget {
  const BookingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (context, index) => const BookingsListViewItem(),
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: 20.h,
      ),
    );
  }
}
