import 'package:flutter/cupertino.dart';

import '../../../../../../../../../core/theming/text_styles.dart';

class VoyageTimeMinutePicker extends StatefulWidget {
  const VoyageTimeMinutePicker({super.key});

  @override
  State<VoyageTimeMinutePicker> createState() => _VoyageTimeMinutePickerState();
}

class _VoyageTimeMinutePickerState extends State<VoyageTimeMinutePicker> {
  int selectedMinute = 30;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 150,
      child: CupertinoPicker(
        scrollController:
            FixedExtentScrollController(initialItem: selectedMinute ~/ 5),
        itemExtent: 40,
        onSelectedItemChanged: (index) {
          setState(() {
            selectedMinute = index * 5;
          });
        },
        children: List.generate(12, (index) {
          return Center(
            child: Text(
              (index * 5).toString().padLeft(2, '0'),
              style: TextStyles.font25Black400(),
            ),
          );
        }),
      ),
    );
  }
}
