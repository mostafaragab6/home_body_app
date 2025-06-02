import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/theming/app_colors.dart';

import '../../../../../core/shared/widgets/app_text_form.dart';
import '../../bloc/register_cubit.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          AppTextForm(
            hintText: 'UserName',
            controller: context.read<RegisterCubit>().userNameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Must write a user name';
              }
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          AppTextForm(
            hintText: 'Email Address',
            controller: context.read<RegisterCubit>().emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                  .hasMatch(value)) {
                return 'Please enter a valid email address';
              }
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          AppTextForm(
            hintText: 'Password',
            isObscured: context.read<RegisterCubit>().isObscuredPass,
            controller: context.read<RegisterCubit>().passwordController,
            suffixIcon: IconButton(
              icon: context.read<RegisterCubit>().isObscuredPass
                  ? Icon(
                      Icons.visibility_off,
                      color: AppColors.lightGrey,
                    )
                  : Icon(
                      Icons.visibility,
                      color: AppColors.lightGrey,
                    ),
              onPressed: () {
                setState(() {
                  context.read<RegisterCubit>().isObscuredPass =
                      !context.read<RegisterCubit>().isObscuredPass;
                });
              },
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
            },
          ),
        ],
      ),
    );
  }
}
