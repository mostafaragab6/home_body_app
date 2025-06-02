import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/text_styles.dart';

class DividerRow extends StatelessWidget {
  const DividerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
            height: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Text(
            "Or Continue with",
            style: TextStyles.font16Black400(),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
            height: 1,
          ),
        ),
      ],
    );
  }
}
