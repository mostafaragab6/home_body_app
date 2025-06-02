import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/shared/widgets/app_text_button.dart';
import 'widgets/payment_info_form.dart';

// ignore: must_be_immutable
class PaymentInfo extends StatelessWidget {
  const PaymentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 0.8.sh,
        child: Stack(
          children: [
            Column(
              children: [
                Text(
                  'Choose your payment method',
                  style: TextStyles.font16DarkGrey500(),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 17.w,
                  children: [
                    Image.asset('assets/icons/Visa.png'),
                    Image.asset('assets/icons/Mastercard.png'),
                    Image.asset('assets/icons/Amex.png'),
                  ],
                ),
                SizedBox(
                  height: 31.h,
                ),
                PaymentInfoForm(),
              ],
            ),
            Positioned(
              top: 690.h,
              left: 75.w,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0.h),
                child: AppTextButton(
                  buttonWidget: Text(
                    'PAY NOW',
                    style: TextStyles.font17White600(),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      Routes.bookingCompleteScreen,
                      (route) => false,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
