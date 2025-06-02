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
          height: 21.h,
        ),
        RegisterForm(),
        SizedBox(
          height: 18.h,
        ),
        DividerRow(),
        SizedBox(
          height: 34.h,
        ),
        SocialRow(),
        SizedBox(
          height: 25.h,
        ),
        TermsAndPoliciesCheck(),
        SizedBox(
          height: 25.h,
        ),
        RegisterButtonAndRichText(),
      ],
    );
  }
}
