import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';

class RememberMeAndForgetPass extends StatefulWidget {
  const RememberMeAndForgetPass({super.key});

  @override
  State<RememberMeAndForgetPass> createState() =>
      _RememberMeAndForgetPassState();
}

class _RememberMeAndForgetPassState extends State<RememberMeAndForgetPass> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => setState(() {
            checked = !checked;
          }),
          child: Row(
            spacing: 5.w,
            children: [
              Icon(
                checked ? Icons.check_box : Icons.square_outlined,
                color: checked ? AppColors.primary : AppColors.lightGrey,
              ),
              Text(
                'Remember me',
                style: TextStyles.font12Grey500(),
              ),
            ],
          ),
        ),
        const Spacer(),
        Text(
          'Forget password ?',
          style: TextStyles.font12Blue600(),
        )
      ],
    );
  }
}
