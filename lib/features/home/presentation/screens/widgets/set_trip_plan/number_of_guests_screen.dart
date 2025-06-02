import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/shared/widgets/app_text_button.dart';
import '../../../../../../core/shared/widgets/positioned_container.dart';
import '../../../bloc/home_cubit.dart';
import 'widgets/number_of_guests/number_of_guests_grid_view.dart';
import 'widgets/number_of_guests/show_other_numbers_bloc_builder.dart';

class NumberOfGuests extends StatelessWidget {
  const NumberOfGuests({super.key});

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
      child: SingleChildScrollView(
        child: SizedBox(
          height: 795.h,
          child: Stack(
            children: [
              Image.asset('assets/imgs/number_of_sessions.png'),
              PositionedContainer(
                height: 270,
                child: positionedContainerContent(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AppTextButton(
                  buttonWidget: Text(
                    'Confirm',
                    style: TextStyles.font17White600(),
                  ),
                  onPressed: () {
                    context.read<HomeCubit>().pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget positionedContainerContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0.w),
          child: Text(
            'Number Of Sessions',
            style: TextStyles.font22Black600(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.0.w),
          child: NumberOfGuestsGridView(),
        ),
        SizedBox(
          height: 20.h,
        ),
        ShowOtherNumbersBlocBuilder(),
      ],
    );
  }
}
