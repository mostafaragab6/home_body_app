import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VoyageTimeAmPmPicker extends StatefulWidget {
  const VoyageTimeAmPmPicker({super.key});

  @override
  State<VoyageTimeAmPmPicker> createState() => _VoyageTimeAmPmPickerState();
}

class _VoyageTimeAmPmPickerState extends State<VoyageTimeAmPmPicker> {
  String selectedPeriod = "AM";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 150,
      child: CupertinoPicker(
        scrollController: FixedExtentScrollController(
            initialItem: selectedPeriod == "AM" ? 0 : 1),
        itemExtent: 40,
        onSelectedItemChanged: (index) {
          setState(() {
            selectedPeriod = index == 0 ? "AM" : "PM";
          });
        },
        children: ["AM", "PM"].map((e) {
          return Center(
            child: Text(
              e,
              style: TextStyle(
                  fontSize: 24,
                  color: selectedPeriod == e ? Colors.blue : Colors.black),
            ),
          );
        }).toList(),
      ),
    );
  }
}
