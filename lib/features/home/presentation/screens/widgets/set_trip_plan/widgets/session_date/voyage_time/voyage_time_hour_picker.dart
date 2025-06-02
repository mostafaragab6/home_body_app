import 'package:flutter/cupertino.dart';

import '../../../../../../../../../core/theming/text_styles.dart';

class VoyageTimeHourPicker extends StatefulWidget {
  const VoyageTimeHourPicker({super.key});

  @override
  State<VoyageTimeHourPicker> createState() => _VoyageTimeHourPickerState();
}

class _VoyageTimeHourPickerState extends State<VoyageTimeHourPicker> {
  int selectedHour = 9;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 150,
      child: CupertinoPicker(
        scrollController:
            FixedExtentScrollController(initialItem: selectedHour - 1),
        itemExtent: 40,
        onSelectedItemChanged: (index) {
          setState(() {
            selectedHour = index + 1;
          });
        },
        children: List.generate(12, (index) {
          return Center(
            child: Text(
              (index + 1).toString().padLeft(2, '0'),
              style: TextStyles.font25Black400(),
            ),
          );
        }),
      ),
    );
  }
}
