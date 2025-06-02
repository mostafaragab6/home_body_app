import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/constants/home_constants.dart';
import '../bloc/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: context.read<HomeCubit>().pageController,
      itemBuilder: (context, index) =>
          HomeConstants.buildPageViewScreens(context)[index],
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
