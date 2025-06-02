import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/text_styles.dart';

class TermsAndPoliciesCheck extends StatefulWidget {
  const TermsAndPoliciesCheck({super.key});

  @override
  State<TermsAndPoliciesCheck> createState() => _TermsAndPoliciesCheckState();
}

class _TermsAndPoliciesCheckState extends State<TermsAndPoliciesCheck> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          Expanded(
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text:
                      'By clicking, you confirm that you have read, understood, & agreed to Marakbi',
                  style: TextStyles.font12Grey500(),
                ),
                TextSpan(
                  text: 'Terms & condition',
                  style: TextStyles.font12Primary700(),
                ),
                TextSpan(
                  text: ' & ',
                  style: TextStyles.font12Primary700(),
                ),
                TextSpan(
                  text: 'Privacy policy.',
                  style: TextStyles.font12Primary700(),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
