import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/shared/widgets/app_text_button.dart';
import '../../../../../../core/shared/widgets/positioned_container.dart';
import '../../../bloc/home_cubit.dart';
import 'widgets/select_training_type/select_training_type_grid_view.dart';

class SelectTrainingTypeScreen extends StatelessWidget {
  const SelectTrainingTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<HomeCubit>();
    return WillPopScope(
      onWillPop: () async {
        cubit.pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );

        return false;
      },
      child: Stack(
        children: [
          Image.asset('assets/imgs/Cardio.png'),
          PositionedContainer(
            height: 446,
            child: positionedContainerContent(),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: 30.0.h),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AppTextButton(
                buttonWidget: Text(
                  'Confirm',
                  style: TextStyles.font17White600(),
                ),
                onPressed: () {
                  // cubit.getTrainersRequest = GetTrainersRequest(
                  //   cubit.cityController.text,
                  //   cubit.countryController.text,
                  //   cubit.tagsId,
                  // );
                  // cubit.getTrainers();
                  cubit.pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget positionedContainerContent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Training Type',
            style: TextStyles.font16Black500(),
          ),
          SelectTrainingTypeGridView(),
        ],
      ),
    );
  }
}
