import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../../core/shared/widgets/app_drop_down_text_field.dart';
import '../../../../../bloc/home_cubit.dart';

// ignore: must_be_immutable
class DropDownMenu extends StatelessWidget {
  DropDownMenu({super.key, required this.cities, required this.countries});
  List<String> countries;
  List<String> cities;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(1.0, 1.0),
            color: AppColors.lightGrey.withOpacity(0.5),
            blurRadius: 6.0,
            spreadRadius: 2.0,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: AppDropDownTextField(
        value: countries.isNotEmpty ? countries.first : cities.first,
        onChanged: (value) {
          countries.isNotEmpty
              ? context.read<HomeCubit>().countryController.text = value!
              : context.read<HomeCubit>().cityController.text = value!;
        },
        list: countries.isNotEmpty
            ? countries
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList()
            : cities
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
        hintText: 'El-Riyad',
        controller: countries.isNotEmpty
            ? context.read<HomeCubit>().countryController
            : context.read<HomeCubit>().cityController,
        validator: (value) {},
      ),
    );
  }
}
