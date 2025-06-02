import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/theming/app_colors.dart';
import 'package:home_body/features/notification/presentation/views/widgets/notification_list_view.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColors.scaffoldColor,
        elevation: 0, // Remove shadow completely
        scrolledUnderElevation: 0, title: const Text('Notification'),
        centerTitle: true,
        toolbarHeight: 40.h,
      ),
      body: const NotificationListView(),
    );
  }
}
