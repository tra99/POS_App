import 'package:flutter/material.dart';

class StyledTextField extends StatefulWidget {
  final String hintText;
  final Widget suffixIcon;
  final String labelText;

  const StyledTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  _StyledTextFieldState createState() => _StyledTextFieldState();
}

class _StyledTextFieldState extends State<StyledTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !_isPasswordVisible,
      style: const TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
        ),
      ),
    );
  }
}
