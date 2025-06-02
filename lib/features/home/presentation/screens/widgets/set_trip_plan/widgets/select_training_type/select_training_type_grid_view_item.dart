import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_body/features/home/data/models/tags/tags_response.dart';
import 'package:home_body/features/home/presentation/bloc/home_cubit.dart';

import '../../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../../core/theming/text_styles.dart';

// ignore: must_be_immutable
class SelectTrainingTypeGridViewItem extends StatefulWidget {
  int index;
  Tags data;
  SelectTrainingTypeGridViewItem(
      {required this.index, required this.data, super.key});

  @override
  State<SelectTrainingTypeGridViewItem> createState() =>
      _SelectTrainingTypeGridViewItemState();
}

class _SelectTrainingTypeGridViewItemState
    extends State<SelectTrainingTypeGridViewItem> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<HomeCubit>();
    return GestureDetector(
      onTap: () {
        setState(() {
          if (cubit.tagsId.contains(widget.data.id)) {
            cubit.tagsId.remove(widget.data.id);
          } else {
            cubit.tagsId.add(widget.data.id ?? 0);
          }
          print(cubit.tagsId);
        });
      },
      child: Container(
        width: 122.w,
        height: 97.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: cubit.tagsId.contains(widget.data.id)
                ? AppColors.primary
                : Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0.0, 1.1),
                  color: AppColors.lightGrey.withOpacity(0.4),
                  blurRadius: 12.0,
                  spreadRadius: 0.0)
            ]),
        child: Column(
          spacing: 10.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.data.name ?? '',
              style: cubit.tagsId.contains(widget.data.id)
                  ? TextStyles.font17White500()
                  : TextStyles.font16Black500(),
            ),
          ],
        ),
      ),
    );
  }
}
