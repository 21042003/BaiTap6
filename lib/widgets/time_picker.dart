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
      //Căn lề các widget con về phía bên trái
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(color: Colors.grey)
        ),
        const SizedBox(height: 8),
        //bắt tương tác
        GestureDetector(
          //bat dong bo
          onTap: () async {
            //tra ve gia tri ham hoac gia tri null
            final TimeOfDay? time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            //neu time = null in ra gia tri time goi phuong thuc format
            print(time?.format(context) ?? initialTime);
          },
          //tao nut va vien
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            //hien thi anh dong ho theo chieu ngang
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
