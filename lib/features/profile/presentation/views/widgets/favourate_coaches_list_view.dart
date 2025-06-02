import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/profile/presentation/views/widgets/favourate_coaches_list_view_item.dart';

class FavourateCoachesListView extends StatelessWidget {
  const FavourateCoachesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            FavourateCoachesListViewItem(index: index),
        itemCount: 4,
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 8.0.w,
        ),
      ),
    );
  }
}
