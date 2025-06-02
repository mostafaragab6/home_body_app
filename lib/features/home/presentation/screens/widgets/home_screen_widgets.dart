import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/di/dependency_injecion.dart';
import 'package:home_body/features/recommended_coaches/logic/recommended_coaches_cubit.dart';
import 'image_and_name_row.dart';
import 'trending_trainings/trending_trainings_list_view.dart';
import 'plans/plans_list_view.dart';
import 'recommended_trainers/recommended_trainers_list_view.dart';

class HomeScreenWidgets extends StatelessWidget {
  const HomeScreenWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 24.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImageAndNameRow(),
              SizedBox(
                height: 27.h,
              ),
              const PlansListView(),
              SizedBox(
                height: 19.h,
              ),
              BlocProvider(
                  create: (BuildContext context) => RecommendedCoachesCubit(
                        getTrainersRepoImp: getIt(),
                      )..getTrainers(),
                  child: const RecommendedTrainersListView()),
              SizedBox(
                height: 27.h,
              ),
              const TrendingTrainingsListView()
            ],
          ),
        ),
      ),
    );
  }
}
