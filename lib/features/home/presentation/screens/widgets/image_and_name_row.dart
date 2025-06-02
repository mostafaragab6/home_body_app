import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/theming/app_colors.dart';
import 'package:home_body/features/home/presentation/bloc/home_cubit.dart';

import '../../../../../core/theming/text_styles.dart';

class ImageAndNameRow extends StatelessWidget {
  const ImageAndNameRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 26.0.w),
      child: Row(
        spacing: 8.0.w,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.lighterGrey,
          ),
          Column(
            children: [
              Text(
                'Hi, Ahmed Hussein',
                style: TextStyles.font16Black500(),
              ),
              Text(
                'el-riyad , Saudi Arabia',
                style: TextStyles.font14Primary400(),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              context.read<HomeCubit>().getTags();
            },
            child: Image.asset(
              'assets/icons/Notification.png',
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
