import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/networking/api_service.dart';
import 'package:home_body/features/recommended_coaches/logic/recommended_coaches_cubit.dart';
import 'package:home_body/features/recommended_coaches/logic/recommended_coaches_state.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../data/models/get_trainers_response.dart';
import 'recommended_trainers_list_view_item.dart';

class RecommendedTrainersListView extends StatelessWidget {
  const RecommendedTrainersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedCoachesCubit, RecommendedCoachesState>(
      builder: (BuildContext context, state) {
        List<Trainers?>? data =
            state is GetTrainersSuccess ? state.data.trainers : [];
        if (state is GetTrainersError) {
          ApiService.refreshToken().then((value) {
            context.read<RecommendedCoachesCubit>().getTrainers();
          });
        }

        return data!.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.symmetric(horizontal: 16.0.w),
                    child: Row(
                      children: [
                        Text(
                          'Recommended Trainers',
                          style: TextStyles.font16Black500(),
                        ),
                        const Spacer(),
                        Text(
                          'See More',
                          style: TextStyles.font14Primary400().copyWith(
                              color: AppColors.primary.withOpacity(0.7),
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  AppColors.primary.withOpacity(0.7),
                              height: 1.2),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  SizedBox(
                    height: 300.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          RecommendedTrainersListViewItem(
                              data: data[index]!, index: index),
                      itemCount: data.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        width: 8.0.w,
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }
}
