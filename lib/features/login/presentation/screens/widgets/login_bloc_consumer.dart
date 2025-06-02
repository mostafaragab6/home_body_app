import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/shared/widgets/app_text_button.dart';
import '../../bloc/login_cubit.dart';
import '../../bloc/login_state.dart';

class LoginBlocConsumer extends StatelessWidget {
  const LoginBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
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
                  'Login',
                  style: TextStyles.font17White600(),
                ),
          onPressed: () {
            context.read<LoginCubit>().login();
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
            Routes.layoutScreen,
            (route) => false,
          );
        }
      },
    );
  }
}
