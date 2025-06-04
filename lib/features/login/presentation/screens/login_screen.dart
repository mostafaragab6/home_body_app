import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/login/presentation/screens/widgets/login_container.dart';

import 'widgets/logo_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: SizedBox(
            height: 1.sh,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 426.h,
                  child: Image.asset(
                    'assets/imgs/login_image.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: LoginContainer(),
                ),
                const LogoContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
