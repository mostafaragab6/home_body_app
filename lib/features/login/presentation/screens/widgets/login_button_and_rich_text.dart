import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/theming/text_styles.dart';
import 'package:home_body/features/login/presentation/screens/widgets/login_bloc_consumer.dart';

import '../../../../../core/routing/routes.dart';

class LoginButtonAndRichText extends StatelessWidget {
  const LoginButtonAndRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        LoginBlocConsumer(),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don`t have an account? ',
                style: TextStyles.font14Grey400(),
              ),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, Routes.registerScreen);
                  },
                text: 'Register',
                style: TextStyles.font14Blue400()
                    .copyWith(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
