import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/shared/widgets/app_drop_down_text_field.dart';
import '../../../../../../core/shared/widgets/app_text_form.dart';

// ignore: must_be_immutable
class PersonalInfoForm extends StatelessWidget {
  PersonalInfoForm({super.key});

  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'First Name',
            style: TextStyles.font14Black500(),
          ),
          SizedBox(
            height: 8.h,
          ),
          AppTextForm(
            hintText: 'First Name',
            controller: fNameController,
            validator: (value) {},
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Last Name',
            style: TextStyles.font14Black500(),
          ),
          SizedBox(
            height: 8.h,
          ),
          AppTextForm(
            hintText: 'Last Name',
            controller: lNameController,
            validator: (value) {},
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Email Address',
            style: TextStyles.font14Black500(),
          ),
          SizedBox(
            height: 8.h,
          ),
          AppTextForm(
            hintText: 'Info@gmail.com',
            controller: emailController,
            validator: (value) {},
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'Phone Number',
            style: TextStyles.font14Black500(),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            spacing: 9.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppDropDownTextField(
                borderRadius: 4,
                borderWidth: 1,
                maxWidth: 110.w,
                maxHeight: 44.h,
                borderColor: AppColors.lighterGrey,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                onChanged: (value) {},
                value: '+20',
                list: [
                  DropdownMenuItem(
                    value: '+20',
                    child: Row(
                      spacing: 7.w,
                      children: [
                        Image.asset('assets/icons/EG.png'),
                        const Text('+20'),
                      ],
                    ),
                  ),
                  const DropdownMenuItem(
                    value: '+1',
                    child: Text('+1'),
                  ),
                  const DropdownMenuItem(
                    value: '+996',
                    child: Text('+996'),
                  ),
                ],
                hintText: '+20',
                controller: countryCodeController,
                validator: (value) {},
              ),
              Expanded(
                child: AppTextForm(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
                  hintText: '00 00 00 00 00',
                  controller: phoneController,
                  validator: (value) {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
