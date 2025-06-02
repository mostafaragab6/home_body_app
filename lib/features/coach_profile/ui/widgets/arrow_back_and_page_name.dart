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
      padding: EdgeInsetsDirectional.only(start: 6.0.w),
      child: Row(
        spacing: 80.w,
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
            'Coach Profile',
            style: TextStyles.font18Black500(),
          ),
        ],
      ),
    );
  }
}
