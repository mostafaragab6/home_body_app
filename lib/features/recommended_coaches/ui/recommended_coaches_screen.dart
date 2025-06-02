import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/recommended_coaches/ui/widgets/arrow_back_and_page_name.dart';
import 'package:home_body/features/recommended_coaches/ui/widgets/recommended_coaches_list_view.dart';
import 'package:home_body/features/recommended_coaches/ui/widgets/sort_and_filter/sort_and_filter_container.dart';

import '../../../core/di/dependency_injecion.dart';
import '../../../core/theming/text_styles.dart';
import '../../home/presentation/bloc/home_cubit.dart';
import '../logic/recommended_coaches_cubit.dart';

class RecommendedCoachesScreen extends StatelessWidget {
  const RecommendedCoachesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecommendedCoachesCubit(
        getTrainersRepoImp: getIt(),
        city: context.read<HomeCubit>().cityController.text,
        country: context.read<HomeCubit>().countryController.text,
        tags: context.read<HomeCubit>().tagsId,
      )..getTrainers(),
      child: WillPopScope(
        onWillPop: () async {
          context.read<HomeCubit>().pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
          context.read<HomeCubit>().getTags();
          return false;
        },
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const ArrowBackAndPageName(),
                const SortAndFilterContainer(),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Most Coaches Recommended For Cardio',
                  style: TextStyles.font14Black400(),
                ),
                SizedBox(
                  height: 23.h,
                ),
                const RecommendedCoachesListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
