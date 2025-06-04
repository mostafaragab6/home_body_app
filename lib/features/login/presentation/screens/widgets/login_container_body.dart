import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/login/presentation/screens/widgets/divider_row.dart';
import 'package:home_body/features/login/presentation/screens/widgets/login_button_and_rich_text.dart';
import 'package:home_body/features/login/presentation/screens/widgets/login_form.dart';
import 'package:home_body/features/login/presentation/screens/widgets/remember_me_and_forget_pass.dart';
import 'package:home_body/features/login/presentation/screens/widgets/social_row.dart';

import '../../../../../core/shared/cubits/google_cubit/continue_with_social_cubit.dart';
import '../../../../../core/theming/text_styles.dart';

class LoginContainerBody extends StatelessWidget {
  const LoginContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Login with your email address",
          style: TextStyles.font20Primary600(),
        ),
        SizedBox(
          height: 15.h,
        ),
        const LoginForm(),
        SizedBox(
          height: 15.h,
        ),
        const RememberMeAndForgetPass(),
        SizedBox(
          height: 22.h,
        ),
        const DividerRow(),
        SizedBox(
          height: 22.h,
        ),
        BlocProvider(
            create: (BuildContext context) => ContinueWithSocialCubit(),
            child: const SocialRow()),
        SizedBox(
          height: 40.h,
        ),
        const LoginButtonAndRichText(),
      ],
    );
  }
}
