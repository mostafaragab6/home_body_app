import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/shared/widgets/app_text_form.dart';
import 'package:home_body/features/profile/presentation/bloc/profile_cubit.dart';

import '../../../../../core/theming/app_colors.dart';
import 'add_profile_bloc_consumer.dart';

// ignore: must_be_immutable
class AddProfileContainer extends StatelessWidget {
  const AddProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 20.h),
      padding: EdgeInsetsDirectional.only(
        start: 30.w,
        end: 27.w,
        top: 25.h,
        bottom: 17.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: AppColors.moreLightGrey,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 13,
            spreadRadius: 0,
            color: AppColors.darkGrey.withOpacity(0.3),
          ),
        ],
      ),
      child: Form(
        key: context.read<ProfileCubit>().formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 14.h,
            children: [
              AppTextForm(
                hintText: "Name",
                controller: context.read<ProfileCubit>().nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Add Your Name";
                  }
                },
              ),
              AppTextForm(
                hintText: "Mobile",
                controller: context.read<ProfileCubit>().mobileController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Add Your Mobile";
                  }
                },
              ),
              AppTextForm(
                hintText: "Address",
                controller: context.read<ProfileCubit>().addressController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Add Your Address";
                  }
                },
              ),
              AppTextForm(
                hintText: "Height",
                controller: context.read<ProfileCubit>().heightController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Add Your Height";
                  }
                },
              ),
              AppTextForm(
                hintText: "Weight",
                controller: context.read<ProfileCubit>().weightController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Add Your Weight";
                  }
                },
              ),
              AppTextForm(
                hintText: "Gender",
                controller: context.read<ProfileCubit>().genderController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Add Your Gender";
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 66.w,
                  children: [
                    AddProfileBlocConsumer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
