import 'package:flutter/material.dart';
import 'package:socode/Other/colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;

  const CustomTextFieldWidget({
    super.key,
    required this.labelText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: AppColors.first,
          fontWeight: FontWeight.w600,
        ),
        filled: true,
        fillColor: AppColors.third.withValues(alpha: 0.13),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.first, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      style: TextStyle(color: Colors.white),
      obscureText: isPassword,
      keyboardType: keyboardType,
    );
  }
}
