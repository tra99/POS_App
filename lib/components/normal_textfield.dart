import 'package:flutter/material.dart';

class NormalTextField extends StatelessWidget {
  final String hintText;
  final Widget suffixIcon;
  final String labelText;

  const NormalTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        labelText: labelText,
      ),
    );
  }
}
