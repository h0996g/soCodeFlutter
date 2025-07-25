import 'package:flutter/material.dart';
import 'package:socode/Components/custom_button_widget.dart';
import 'package:socode/Components/text_field.dart';
import 'package:socode/Other/colors.dart';

class CustomFormContainerWidget extends StatelessWidget {
  const CustomFormContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 36),
      decoration: BoxDecoration(
        color: AppColors.second.withValues(alpha: 0.69),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: AppColors.third.withValues(alpha: 0.20),
            blurRadius: 24,
            offset: Offset(0, 12),
          ),
        ],
        border: Border.all(
          color: AppColors.first.withValues(alpha: 0.08),
          width: 1.7,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 48),
          Text(
            'Welcome Back',
            style: TextStyle(
              color: AppColors.first,
              fontSize: 26,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.1,
            ),
          ),
          SizedBox(height: 7),
          Text(
            'Login to your account',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          SizedBox(height: 33),
          CustomTextFieldWidget(
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),
          CustomTextFieldWidget(labelText: 'Password', isPassword: true),
          SizedBox(height: 32),
          CustomButtonWidget(buttonText: 'Login', onPressed: () {}),
          SizedBox(height: 15),
          Text(
            "Forgot password?",
            style: TextStyle(color: Colors.white54, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
