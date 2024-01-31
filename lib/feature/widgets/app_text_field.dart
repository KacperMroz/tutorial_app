import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key, required this.fieldName});

  final String fieldName;

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
    ));
  }
}
