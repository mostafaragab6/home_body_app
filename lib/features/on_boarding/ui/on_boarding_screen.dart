import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/on_boarding/constants/constants.dart';
import 'package:home_body/features/on_boarding/ui/widgets/lower_container.dart';
import 'package:home_body/features/on_boarding/ui/widgets/upper_container.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 932.h,
              width: double.infinity,
              child: buildPageView(),
            ),
          ),
          UpperContainer(),
          LowerContainer(),
        ],
      ),
    );
  }

  Widget buildPageView() {
    return PageView.builder(
      controller: Constants.pageController,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          Constants.images[index],
          fit: BoxFit.cover,
        );
      },
      onPageChanged: (index) {
        setState(() {
          Constants.currentIndex = index;
        });
      },
    );
  }
}
