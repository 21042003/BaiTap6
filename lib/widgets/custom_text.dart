import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final int maxLines;

  const CustomTextField({super.key, required this.label, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      //gan so dong toi da cua truong nhap lieu
      maxLines: maxLines,
      //Tuy chinh giao dien
      decoration: InputDecoration(
        //hien thi nhan
        labelText: label,
        labelStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
      ),
    );
  }
}
