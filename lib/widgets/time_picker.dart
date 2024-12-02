import 'package:flutter/material.dart';

import '../constants/app_icons.dart';

class TimePickerWidget extends StatelessWidget {
  final String label;
  final String initialTime;

  const TimePickerWidget(
      {super.key, required this.label, required this.initialTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () async {
            final TimeOfDay? time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            print(time?.format(context) ?? initialTime);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Image.asset(
                  AppIcons.watch,
                  width: 24,
                ),
                const SizedBox(width: 10),
                Text(initialTime, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
