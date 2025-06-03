import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/theming/app_colors.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/shared/app_constants.dart';

class HomeBodyApp extends StatelessWidget {
  const HomeBodyApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.scaffoldColor,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.loginScreen,
        //  AppConstants.isLogged
        //     ? Routes.layoutScreen
        //     : AppConstants.onBordingSeen
        //         ? Routes.loginScreen
        //         : Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
