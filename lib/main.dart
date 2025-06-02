import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_body/core/di/dependency_injecion.dart';
import 'package:home_body/core/helpers/shared_prefs_helper.dart';
import 'package:home_body/core/routing/app_router.dart';
import 'package:home_body/core/shared/app_constants.dart';
import 'package:home_body/core/shared/shared_pref_keys.dart';
import 'package:home_body/home_body_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setUpGetIt();

  await checkLogin();
  await checkOnBoarding();
  runApp(HomeBodyApp(
    appRouter: AppRouter(),
  ));
}

Future<void> checkLogin() async {
  String? logged =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.accessToken);

  if (logged != null || logged!.isNotEmpty) {
    AppConstants.isLogged = true;
  } else {
    AppConstants.isLogged = false;
  }
}

Future<void> checkOnBoarding() async {
  AppConstants.onBordingSeen =
      await SharedPrefHelper.getBool(SharedPrefKeys.onBoardingSeen);
}
