import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key, required this.fieldName, required this.onChanged});

  final String fieldName;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(
          fieldName,
          style: const TextStyle(color: Colors.black),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      onChanged: (value) => onChanged(value),
    );
  }
}
