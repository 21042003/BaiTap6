import 'package:flutter/material.dart';
import '../constants/app_icons.dart';

class createNew extends StatelessWidget {
  const createNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AppIcons.input,
          width: 29,
          height: 29,
        ),
        const Spacer(),
        const Text(
          'Create new task',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
