import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/core/di/dependency_injecion.dart';
import 'package:home_body/features/booking/presentation/view/booking_sceen.dart';
import 'package:home_body/features/home/data/repos/tags/tags_repo_imp.dart';
import 'package:home_body/features/notification/presentation/views/notification_screen.dart';
import 'package:home_body/features/profile/data/repos/get_profile_repo_imp.dart';
import 'package:home_body/features/profile/presentation/bloc/profile_cubit.dart';
import 'package:home_body/features/profile/presentation/views/profile_screen.dart';

import '../../home/presentation/bloc/home_cubit.dart';
import '../../home/presentation/screens/home_screen.dart';
import '../../login/data/repos/add_profile_repo_imp.dart';
import '../../profile/data/models/get_profile_response.dart';

class NavigationBarConstants {
  static int selectedIndex = 0;
  static GetProfileResponse? profileResponse;
  static const List<String> icons = [
    'assets/icons/Home.png',
    'assets/icons/chat.png',
    'assets/icons/Person.png',
    'assets/icons/Notification.png',
    'assets/icons/Profile.png',
  ];

  static List<Widget> screens = [
    BlocProvider(
      create: (BuildContext context) => HomeCubit(
        getIt<TagsRepoImp>(),
      ),
      child: const HomeScreen(),
    ),
    const Center(
      child: Text('Messages'),
    ),
    const BookingSceen(),
    const NotificationScreen(),
    BlocProvider(
        create: (BuildContext context) =>
            ProfileCubit(getIt<GetProfileRepoImp>(), getIt<AddProfileRepoImp>())
              ..getProfile(),
        child: const ProfileScreen()),
  ];

  static const List<String> titles = [
    "Home",
    "Messages",
    "Bookings",
    "Notification",
    "Profile"
  ];
}
