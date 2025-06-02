import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/routing/routes.dart';
import 'package:home_body/core/theming/text_styles.dart';
import 'package:home_body/features/register/presentation/screens/widgets/register_bloc_consumer.dart';

class RegisterButtonAndRichText extends StatelessWidget {
  const RegisterButtonAndRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        RegisterBlocConsumer(),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'I have an account? ',
                style: TextStyles.font14Grey400(),
              ),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.loginScreen, (route) => false);
                  },
                text: 'Login',
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
