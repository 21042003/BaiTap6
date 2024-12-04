import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class PrioritySelector extends StatefulWidget {
  const PrioritySelector({super.key});

  @override
  _PrioritySelectorState createState() => _PrioritySelectorState();
}

class _PrioritySelectorState extends State<PrioritySelector> {
  String _selectedPriority = 'High';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //high
        Expanded(//khoảng trống
          child: _buildPriorityButton('High', AppColors.hexFACBBA),
        ),
        const SizedBox(width: 10),
        //Medium
        Expanded(
          child: _buildPriorityButton('Medium', AppColors.hexD7F0FF),
        ),
        const SizedBox(width: 10),
        //low
        Expanded(
          child: _buildPriorityButton('Low', AppColors.hexFAD9FF),
        ),
      ],
    );
  }

  Widget _buildPriorityButton(String push, Color color) {
    //lưu giá trị của button đang được chọn
    final isSelected = _selectedPriority == push;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPriority = push;
        });
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? color : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: color, width: 2),
        ),
        child: Center(
          child: Text(
            push,
            style: TextStyle(
              color: isSelected ? Colors.black : color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
