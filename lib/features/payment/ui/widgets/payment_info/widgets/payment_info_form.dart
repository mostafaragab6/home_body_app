import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/shared/widgets/app_text_form.dart';

// ignore: must_be_immutable
class PaymentInfoForm extends StatelessWidget {
  PaymentInfoForm({super.key});
  TextEditingController cardController = TextEditingController();
  TextEditingController expiaryDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController nameOnCardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Card Number',
                  style: TextStyles.font13DarkerGrey400(),
                ),
                const TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ]),
            ),
            SizedBox(
              height: 8.h,
            ),
            AppTextForm(
              borderRadius: 14,
              hintText: 'Card Number',
              controller: cardController,
              validator: (value) {},
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              spacing: 25.w,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Expiry Date',
                            style: TextStyles.font13DarkerGrey400(),
                          ),
                          const TextSpan(
                            text: ' *',
                            style: TextStyle(color: Colors.red),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AppTextForm(
                        borderRadius: 14,
                        hintText: 'MM/YY',
                        controller: expiaryDateController,
                        validator: (value) {},
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'CVV',
                            style: TextStyles.font13DarkerGrey400(),
                          ),
                          const TextSpan(
                            text: ' *',
                            style: TextStyle(color: Colors.red),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AppTextForm(
                        borderRadius: 14,
                        hintText: 'CVV',
                        controller: cvvController,
                        validator: (value) {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Name on Card',
                  style: TextStyles.font13DarkerGrey400(),
                ),
                const TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ]),
            ),
            SizedBox(
              height: 8.h,
            ),
            AppTextForm(
              borderRadius: 14,
              hintText: 'Name on Card',
              controller: nameOnCardController,
              validator: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
