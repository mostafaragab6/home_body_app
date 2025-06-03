import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/login/presentation/screens/widgets/add_profile_container.dart';

import '../../../../core/theming/app_colors.dart';

class AddProfileScreen extends StatelessWidget {
  const AddProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColors.scaffoldColor,
        elevation: 0, // Remove shadow completely
        scrolledUnderElevation: 0, title: const Text('Add Profile'),
        centerTitle: true,
        toolbarHeight: 40.h,
      ),
      body: AddProfileContainer(),
    );
  }
}
