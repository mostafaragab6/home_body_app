import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/features/coach_profile/ui/coach_profile_screen.dart';
import 'package:home_body/features/home/presentation/screens/widgets/set_trip_plan/number_of_guests_screen.dart';
import 'package:home_body/features/home/presentation/screens/widgets/set_trip_plan/session_date.dart';
import 'package:home_body/features/recommended_coaches/ui/recommended_coaches_screen.dart';

import '../../presentation/bloc/home_cubit.dart';
import '../models/boat_type_model.dart';
import '../models/plans_model.dart';
import '../../presentation/screens/widgets/home_screen_widgets.dart';
import '../../presentation/screens/widgets/set_trip_plan/select_training_type_screen.dart';
import '../../presentation/screens/widgets/set_trip_plan/select_location_screen.dart';

class HomeConstants {
  static List<Map<String, dynamic>> plans = [
    {
      'icon': '',
      'desc': 'Home\nSession',
      'color': 'blue',
      'is_selected': true,
    },
    {
      'icon': '',
      'desc': 'Club\nSession',
      'color': 'green',
      'is_selected': false,
    },
    {
      'icon': '',
      'desc': 'Outdoor\nSession',
      'color': 'orange',
      'is_selected': false,
    },
    {
      'icon': '',
      'desc': 'Online\nSession',
      'color': 'red',
      'is_selected': false,
    },
  ];

  static List<Map<String, dynamic>> boats = [
    {
      'img': '',
      'name': 'Cardio',
      'is_selected': false,
    },
    {
      'img': '',
      'name': 'Yoga',
      'is_selected': false,
    },
    {
      'img': '',
      'name': 'HIIT',
      'is_selected': false,
    },
    {
      'img': '',
      'name': 'Cardio',
      'is_selected': false,
    },
    {
      'img': '',
      'name': 'Yoga',
      'is_selected': false,
    },
    {
      'img': '',
      'name': 'HIIT',
      'is_selected': false,
    },
    {
      'img': '',
      'name': 'Cardio',
      'is_selected': false,
    },
    {
      'img': '',
      'name': 'Yoga',
      'is_selected': false,
    },
    {
      'img': '',
      'name': 'HIIT',
      'is_selected': false,
    },
  ];

  static List<String> numbers = [
    '2',
    '5',
    '10',
    '15',
    'Other',
  ];

  static PlansModel plansModel = PlansModel.fromJson(plans);
  static BoatTypeModel boatTypeModel = BoatTypeModel.fromJson(boats);

  static List<Widget> buildPageViewScreens(BuildContext context) {
    return [
      const HomeScreenWidgets(),
      const SelectLocation(),
      const SelectTrainingTypeScreen(),
      const RecommendedCoachesScreen(),
      CoachProfileScreen(
        data: context.read<HomeCubit>().profile,
      ),
      const NumberOfGuests(),
      const SessionDate(),
    ];
  }
}
