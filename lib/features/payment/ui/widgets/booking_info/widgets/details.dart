import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/text_styles.dart';
import '../../../../logic/booking_cubit.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/icons/Hoome.png'),
        Text(
          'Home session',
          style: TextStyles.font14Black400(),
        ),
        SizedBox(
          width: 5.w,
        ),
        Image.asset(
          'assets/icons/Person.png',
          color: Colors.black,
        ),
        Text(
          context.read<BookingCubit>().coachData?.tags?[0].name ?? '',
          style: TextStyles.font14Black400(),
        ),
        SizedBox(
          width: 5.w,
        ),
        Image.asset('assets/icons/people_alt.png'),
        Text(
          '12 Sessions',
          style: TextStyles.font14Black400(),
        ),
      ],
    );
  }
}
