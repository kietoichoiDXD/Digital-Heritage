import 'package:flutter/material.dart';
import '../core/constants/app_constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;

  CustomTextField({required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          borderSide: BorderSide(color: Colors.grey),
        ),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    );
  }
}