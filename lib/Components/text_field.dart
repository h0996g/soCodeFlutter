import 'package:flutter/material.dart';
import 'package:socode/Other/colors.dart';

class CustomTextFieldWidget extends StatefulWidget {
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
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  bool isObscured = false;
  @override
  Widget build(BuildContext context) {
    print('CustomTextFieldWidget build called');
    return TextField(
      decoration: InputDecoration(
        suffixIcon:
            widget.isPassword
                ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscured = !isObscured;
                    });
                  },
                  child:
                      isObscured
                          ? Icon(Icons.visibility_off, color: AppColors.first)
                          : Icon(Icons.visibility, color: AppColors.first),
                )
                : null,
        labelText: widget.labelText,
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
      obscureText: (widget.isPassword && isObscured),

      keyboardType: widget.keyboardType,
    );
  }
}
