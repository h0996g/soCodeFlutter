import 'package:flutter/material.dart';
import 'package:socode/Other/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomButtonWidget({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.first,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: AppColors.first.withValues(alpha: 0.15),
              blurRadius: 16,
              offset: Offset(0, 5),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: TextStyle(
            color: AppColors.third,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
