import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/shared/widgets/app_text_button.dart';
import '../../../../../../core/shared/widgets/positioned_container.dart';
import '../../../bloc/home_cubit.dart';
import 'widgets/select_location/drop_down_menu.dart';

// ignore: must_be_immutable
class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<HomeCubit>().pageController.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );

        return false;
      },
      child: Stack(
        children: [
          Image.asset('assets/imgs/Dumble.png'),
          PositionedContainer(
            height: 400,
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
                  context.read<HomeCubit>().getTags();
                  context.read<HomeCubit>().pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                },
              ),
            ),
          ),
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
          Center(
            child: Text(
              'set your session plan',
              style: TextStyles.font22Black600(),
            ),
          ),
          SizedBox(
            height: 43.h,
          ),
          Text(
            'Select Your Country',
            style: TextStyles.font16Black500(),
          ),
          SizedBox(
            height: 18.h,
          ),
          DropDownMenu(
            countries: const ['Saudi'],
            cities: const [],
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Select Your City',
            style: TextStyles.font16Black500(),
          ),
          SizedBox(
            height: 18.h,
          ),
          DropDownMenu(
            cities: const ['El-Riyad', 'Geddah', 'El-Hegaz'],
            countries: const [],
          ),
        ],
      ),
    );
  }
}
