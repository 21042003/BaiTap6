import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_icons.dart';

class CalendarTask extends StatefulWidget {
  const CalendarTask({super.key});

  @override
  CalendarTaskState createState() => CalendarTaskState();
}

class CalendarTaskState extends State<CalendarTask> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //nut chon trai
          Image.asset(
            AppIcons.vector1,
            width: 9,
            height: 17,
          ),

          //Ngay thang
          const Text(
            '04 Mar - 11 Mar',
            style: TextStyle(
                color: AppColors.hexBA83DE,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),

          //nut chon phai
          Image.asset(
            AppIcons.vector2,
            width: 9,
            height: 17,
          ),
        ],
      ),
    );
  }
}
