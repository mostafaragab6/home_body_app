import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/home/data/models/get_trainers_response.dart';
import 'package:home_body/features/recommended_coaches/logic/recommended_coaches_cubit.dart';
import 'package:home_body/features/recommended_coaches/logic/recommended_coaches_state.dart';

import '../../../../core/networking/api_service.dart';
import 'recommended_coaches_list_view_item.dart';

class RecommendedCoachesListView extends StatelessWidget {
  const RecommendedCoachesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecommendedCoachesCubit, RecommendedCoachesState>(
      buildWhen: (previous, current) =>
          current is GetTrainersLoading ||
          current is GetTrainersSuccess ||
          current is GetTrainersError,
      builder: (BuildContext context, state) {
        List<Trainers?>? data =
            state is GetTrainersSuccess ? state.data.trainers : [];
        if (state is GetTrainersLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is GetTrainersError) {
          ApiService.refreshToken().then((value) {
            context.read<RecommendedCoachesCubit>().getTrainers();
          });
        }
        return data!.isNotEmpty
            ? Expanded(
                child: ListView.separated(
                  itemCount: data.length,
                  itemBuilder: (context, index) =>
                      RecommendedCoachesListViewItem(
                    data: data[index],
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 20.h,
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
      listener: (BuildContext context, state) {},
    );
  }
}
