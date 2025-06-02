import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../../core/shared/widgets/app_text_form.dart';
import '../../../../../bloc/home_cubit.dart';
import '../../../../../bloc/home_state.dart';

// ignore: must_be_immutable
class ShowOtherNumbersBlocBuilder extends StatelessWidget {
  ShowOtherNumbersBlocBuilder({super.key});

  TextEditingController numberOfGuestsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is ShowOtherNumbers || current is RemoveOtherNumbers,
      builder: (context, state) {
        if (state is ShowOtherNumbers) {
          return Container(
            width: double.infinity,
            height: 64.h,
            color: AppColors.lighterGrey,
            child: Column(
              children: [
                Text(
                  'Number Of Sessions',
                  style: TextStyles.font14Black400(),
                ),
                AppTextForm(
                  maxWidth: 57.w,
                  hintStyle: TextStyles.font16DarkGrey500(),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0.h,
                  ),
                  hintText: '0000',
                  controller: numberOfGuestsController,
                  validator: (value) {},
                ),
              ],
            ),
          );
        } else {
          return SizedBox(
            height: 64.h,
          );
        }
      },
    );
  }
}
