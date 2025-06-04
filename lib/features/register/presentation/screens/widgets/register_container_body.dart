import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/register/presentation/screens/widgets/register_button_and_rich_text.dart';
import 'package:home_body/features/register/presentation/screens/widgets/register_form.dart';
import 'package:home_body/features/register/presentation/screens/widgets/terms_and_policies_check.dart';

import '../../../../../core/theming/text_styles.dart';
import 'divider_row.dart';
import 'social_row.dart';

class RegisterContainerBody extends StatelessWidget {
  const RegisterContainerBody({super.key});

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
        const RegisterForm(),
        SizedBox(
          height: 15.h,
        ),
        const DividerRow(),
        SizedBox(
          height: 10.h,
        ),
        const SocialRow(),
        SizedBox(
          height: 10.h,
        ),
        const TermsAndPoliciesCheck(),
        SizedBox(
          height: 20.h,
        ),
        const RegisterButtonAndRichText(),
      ],
    );
  }
}
