import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';
import '../../../home/presentation/bloc/home_cubit.dart';

class ArrowBackAndPageName extends StatelessWidget {
  const ArrowBackAndPageName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 22.0.w),
      child: Row(
        spacing: 40.w,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.read<HomeCubit>().pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
            },
          ),
          Text(
            'Recommended Coaches',
            style: TextStyles.font18Black500(),
          ),
        ],
      ),
    );
  }
}
