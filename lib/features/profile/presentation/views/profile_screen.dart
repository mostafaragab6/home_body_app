import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/theming/app_colors.dart';
import 'package:home_body/features/profile/presentation/views/widgets/favourate_coaches_list_view.dart';
import 'package:home_body/features/profile/presentation/views/widgets/info_container.dart';

import '../../../../core/theming/text_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColors.scaffoldColor,
        elevation: 0, // Remove shadow completely
        scrolledUnderElevation: 0, centerTitle: true,
        title: const Text('Profile'),
        toolbarHeight: 40.h,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 30.h,
          children: [
            const InfoContainer(),
            Text(
              'FAVOURATE COACHES',
              style: TextStyles.font14Primary400(),
            ),
            const FavourateCoachesListView()
          ],
        ),
      ),
    );
  }
}
