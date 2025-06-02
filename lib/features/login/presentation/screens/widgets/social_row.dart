import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/cubits/google_cubit/continue_with_social_cubit.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 65.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () =>
              context.read<ContinueWithSocialCubit>().signInWithGoogle(),
          child: Image.asset('assets/icons/Gmail.png'),
        ),
        Image.asset('assets/icons/apple.png'),
        GestureDetector(
          onTap: () =>
              context.read<ContinueWithSocialCubit>().signInWithFacebook(),
          child: Image.asset('assets/icons/facebook.png'),
        ),
      ],
    );
  }
}
