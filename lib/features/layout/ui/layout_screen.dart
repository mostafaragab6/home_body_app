import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/core/routing/routes.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/text_styles.dart';
import '../constants/navigation_bar_constants.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          NavigationBarConstants.screens[NavigationBarConstants.selectedIndex],
      bottomNavigationBar: customNavigationBar(),
    );
  }

  Widget customNavigationBar() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 6),
        ],
      ),
      child: NavigationBar(
        overlayColor: const WidgetStatePropertyAll(Colors.white),
        indicatorColor: Colors.white,
        selectedIndex: NavigationBarConstants.selectedIndex,
        height: 110.h,
        backgroundColor: Colors.white,
        destinations: List.generate(
          NavigationBarConstants.icons.length,
          (index) {
            return NavigationDestination(
              icon: Column(
                children: [
                  SizedBox(
                    height: 25.0.h,
                  ),
                  Image.asset(
                    NavigationBarConstants.icons[index],
                    width: 24.w,
                    height: 24.h,
                    color: NavigationBarConstants.selectedIndex == index
                        ? AppColors.primary
                        : AppColors.lightGrey,
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Text(NavigationBarConstants.titles[index],
                      style: NavigationBarConstants.selectedIndex == index
                          ? TextStyles.font12Primary500()
                          : TextStyles.font13DarkerGrey400()),
                  SizedBox(
                    height: 3.0.h,
                  ),
                  if (NavigationBarConstants.selectedIndex == index)
                    const Divider(
                      thickness: 2.0,
                      color: AppColors.primary,
                    )
                ],
              ),
              label: '',
            );
          },
        ),
        onDestinationSelected: (index) {
          print(index);
          if (index == 0) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.layoutScreen,
              (route) => false,
            );
          }
          setState(() {
            NavigationBarConstants.selectedIndex = index;
          });
        },
      ),
    );
  }
}
