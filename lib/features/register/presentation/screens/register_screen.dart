import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/register/presentation/screens/widgets/register_container.dart';

import 'widgets/logo_container.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    'assets/imgs/register_image.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: RegisterContainer(),
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
