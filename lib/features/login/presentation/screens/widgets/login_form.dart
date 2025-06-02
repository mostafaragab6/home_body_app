import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/shared/widgets/app_text_form.dart';
import '../../bloc/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextForm(
            hintText: 'UserName',
            controller: context.read<LoginCubit>().userNameController,
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
            isObscured: context.read<LoginCubit>().isObscured,
            controller: context.read<LoginCubit>().passwordController,
            suffixIcon: IconButton(
              icon: context.read<LoginCubit>().isObscured
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
                  context.read<LoginCubit>().isObscured =
                      !context.read<LoginCubit>().isObscured;
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
