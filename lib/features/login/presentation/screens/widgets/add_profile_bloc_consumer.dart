import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/profile/presentation/bloc/profile_cubit.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/shared/widgets/app_text_button.dart';

class AddProfileBlocConsumer extends StatelessWidget {
  const AddProfileBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      builder: (BuildContext context, state) {
        bool loading = state is AddProfileLoadingState;
        return AppTextButton(
          buttonWidth: 123.w,
          buttonheight: 32.h,
          buttonWidget: loading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 1.0,
                ))
              : Text(
                  'ADD PROFILE',
                  style: TextStyles.font12White600(),
                ),
          onPressed: () {
            if (context.read<ProfileCubit>().formKey.currentState!.validate()) {
              context.read<ProfileCubit>().addProfile();
            }
          },
        );
      },
      listener: (BuildContext context, state) {
        print(state);
        if (state is AddProfileErrorState) {
          print(state.errMessage);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
              duration: const Duration(seconds: 1),
            ),
          );
        } else if (state is AddProfileSuccessState) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            Routes.layoutScreen,
            (route) => false,
          );
        }
      },
    );
  }
}
