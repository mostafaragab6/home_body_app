import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/core/di/dependency_injecion.dart';
import 'package:home_body/features/home/data/models/get_trainers_response.dart';
import 'package:home_body/features/login/data/repos/login_repo_imp.dart';
import 'package:home_body/features/login/presentation/screens/add_profile_screen.dart';
import 'package:home_body/features/profile/data/repos/get_profile_repo_imp.dart';
import 'package:home_body/features/profile/presentation/bloc/profile_cubit.dart';
import 'package:home_body/features/register/data/repos/register_repo_imp.dart';
import 'package:home_body/features/register/presentation/bloc/register_cubit.dart';
import 'package:home_body/features/login/presentation/bloc/login_cubit.dart';
import 'package:home_body/features/on_boarding/ui/on_boarding_screen.dart';

import '../../features/login/data/repos/add_profile_repo_imp.dart';
import '../../features/payment/logic/booking_cubit.dart';
import '../../features/payment/ui/booking_screen.dart';
import '../../features/payment/ui/widgets/booking_complete.dart';
import '../../features/register/presentation/screens/register_screen.dart';
import '../../features/layout/ui/layout_screen.dart';
import '../../features/login/presentation/screens/login_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.layoutScreen:
        return MaterialPageRoute(
          builder: (builder) => const LayoutScreen(),
        );
      case Routes.bookingCompleteScreen:
        return MaterialPageRoute(
          builder: (builder) => const BookingComplete(),
        );
      case Routes.bookingScreen:
        Trainers? coachData = settings.arguments as Trainers;
        return MaterialPageRoute(
          builder: (builder) => BlocProvider(
              create: (BuildContext context) => BookingCubit(coachData),
              child: const BookingScreen()),
        );

      case Routes.loginScreen:
        ProfileCubit profileCubit =
            ProfileCubit(getIt(), getIt<AddProfileRepoImp>());
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (BuildContext context) =>
                  LoginCubit(getIt<LoginRepoImp>(), profileCubit),
              child: const LoginScreen()),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (BuildContext context) =>
                  RegisterCubit(getIt<RegisterRepoImp>()),
              child: const RegisterScreen()),
        );
      case Routes.addProfileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (BuildContext context) => ProfileCubit(
                  getIt<GetProfileRepoImp>(), getIt<AddProfileRepoImp>()),
              child: const AddProfileScreen()),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No routes defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
