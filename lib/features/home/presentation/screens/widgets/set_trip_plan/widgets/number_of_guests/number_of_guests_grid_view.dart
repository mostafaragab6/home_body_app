import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../../core/theming/text_styles.dart';
import '../../../../../../data/constants/home_constants.dart';
import '../../../../../bloc/home_cubit.dart';

// ignore: must_be_immutable
class NumberOfGuestsGridView extends StatefulWidget {
  const NumberOfGuestsGridView({super.key});

  @override
  State<NumberOfGuestsGridView> createState() => _NumberOfGuestsGridViewState();
}

class _NumberOfGuestsGridViewState extends State<NumberOfGuestsGridView> {
  String selectedValue = '10';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: SizedBox(
        height: 95.h,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: HomeConstants.numbers.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 8,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) => gridViewItem(index),
        ),
      ),
    );
  }

  Widget gridViewItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedValue = HomeConstants.numbers[index];
          if (selectedValue == 'Other') {
            context.read<HomeCubit>().showOthersNumbers();
          } else {
            context.read<HomeCubit>().removeOthersNumbers();
          }
        });
      },
      child: Container(
        width: 68.w,
        height: 64.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: selectedValue == HomeConstants.numbers[index]
                ? AppColors.primary
                : Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0.0, 1.1),
                  color: AppColors.lightGrey.withOpacity(0.5),
                  blurRadius: 12.0,
                  spreadRadius: 0.0)
            ]),
        child: Column(
          spacing: 10.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              HomeConstants.numbers[index],
              style: selectedValue == HomeConstants.numbers[index]
                  ? TextStyles.font17White500()
                  : TextStyles.font16Black500(),
            ),
          ],
        ),
      ),
    );
  }
}
