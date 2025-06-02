import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/booking_constants.dart';
import '../logic/booking_cubit.dart';
import 'widgets/steps_bloc_builder.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsetsDirectional.only(
            top: 28.h,
          ),
          child: Column(
            children: [
              const StepsBlocBuilder(),
              SizedBox(
                height: 28.h,
              ),
              Expanded(
                child: PageView.builder(
                  controller: context.read<BookingCubit>().pageController,
                  itemBuilder: (context, index) =>
                      BookingConstants.pageViewScreens[index],
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    context.read<BookingCubit>().onPageChanged(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
