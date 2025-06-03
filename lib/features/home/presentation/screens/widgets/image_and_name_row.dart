import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/di/dependency_injecion.dart';
import 'package:home_body/core/theming/app_colors.dart';
import 'package:home_body/features/home/presentation/bloc/home_cubit.dart';
import 'package:home_body/features/profile/data/repos/get_profile_repo_imp.dart';
import 'package:home_body/features/profile/presentation/bloc/profile_cubit.dart';

import '../../../../../core/theming/text_styles.dart';
import '../../../../login/data/repos/add_profile_repo_imp.dart';

class ImageAndNameRow extends StatelessWidget {
  const ImageAndNameRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 26.0.w),
      child: BlocProvider(
        create: (BuildContext context) => ProfileCubit(
          getIt<GetProfileRepoImp>(),
          getIt<AddProfileRepoImp>(),
        )..getProfile(),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (BuildContext context, state) {
            if (state is GetProfileLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is GetProfileSuccessState) {
              return Row(
                spacing: 8.0.w,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.lighterGrey,
                  ),
                  Column(
                    children: [
                      Text(
                        state.response.fullName ?? '',
                        style: TextStyles.font16Black500(),
                      ),
                      Text(
                        state.response.address ?? '',
                        style: TextStyles.font14Primary400(),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      context.read<HomeCubit>().getTags();
                    },
                    child: Image.asset(
                      'assets/icons/Notification.png',
                      color: Colors.black,
                    ),
                  )
                ],
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
