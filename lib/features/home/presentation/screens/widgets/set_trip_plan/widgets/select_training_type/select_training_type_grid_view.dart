import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/home/presentation/bloc/home_cubit.dart';
import 'package:home_body/features/home/presentation/bloc/home_state.dart';

import '../../../../../../../../core/networking/api_service.dart';
import 'select_training_type_grid_view_item.dart';

class SelectTrainingTypeGridView extends StatelessWidget {
  const SelectTrainingTypeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: SizedBox(
        height: 370.h,
        child: BlocConsumer<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              current is GetTagsLoading || current is GetTagsSuccess,
          builder: (BuildContext context, state) {
            if (state is GetTagsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is GetTagsError) {
              ApiService.refreshToken().then((value) {
                context.read<HomeCubit>().getTags();
              });
            }
            if (state is GetTagsSuccess) {
              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.data.tags?.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 9,
                  childAspectRatio: 1.2,
                ),
                itemBuilder: (context, index) => SelectTrainingTypeGridViewItem(
                  data: state.data.tags![index],
                  index: index,
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
          listenWhen: (previous, current) => current is GetTagsError,
          listener: (BuildContext context, state) {
            if (state is GetTagsError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error),
                  duration: const Duration(seconds: 1),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
