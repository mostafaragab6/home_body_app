import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/features/register/presentation/bloc/register_cubit.dart';
import 'package:home_body/features/register/presentation/bloc/register_state.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/shared/widgets/app_text_button.dart';
import '../../../../../core/theming/text_styles.dart';

class RegisterBlocConsumer extends StatelessWidget {
  const RegisterBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      builder: (BuildContext context, state) {
        bool loading = state is Loading;
        return AppTextButton(
          buttonWidget: loading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 1.0,
                ))
              : Text(
                  'Register',
                  style: TextStyles.font17White600(),
                ),
          onPressed: () {
            context.read<RegisterCubit>().register();
          },
        );
      },
      listener: (BuildContext context, state) {
        if (state is Error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              duration: const Duration(seconds: 1),
            ),
          );
        } else if (state is Success) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            Routes.loginScreen,
            (route) => false,
          );
        }
      },
    );
  }
}
