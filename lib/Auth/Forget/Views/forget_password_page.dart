import 'package:flutter/material.dart';
import 'package:socode/Auth/Login/Views/widgets/circular_avatar_widget.dart';
import 'package:socode/Auth/Login/Views/widgets/circular_positioned_container_widget.dart';
import 'package:socode/Auth/Login/Views/widgets/gradient_container_widget.dart';
import 'package:socode/Components/custom_button_widget.dart';
import 'package:socode/Components/text_field.dart';
import 'package:socode/Other/colors.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientContainerWidget(),
          CircularPositionedContainerWidget(
            top: -70,
            left: -70,
            width: 170,
            height: 170,
            color: AppColors.first.withValues(alpha: 0.12),
          ),
          CircularPositionedContainerWidget(
            bottom: 60,
            right: -60,
            width: 130,
            height: 130,
            color: AppColors.first.withValues(alpha: 0.17),
          ),
          CircularPositionedContainerWidget(
            bottom: -40,
            left: -50,
            width: 100,
            height: 100,
            color: AppColors.second.withValues(alpha: 0.11),
          ),
          // Forget Password Form
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Forget password form
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: AppColors.first,
                          ),
                        ),
                        SizedBox(height: 30),
                        // Email Input Field
                        CustomTextFieldWidget(
                          labelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 32),
                        // Reset Password Button
                        CustomButtonWidget(
                          buttonText: 'Reset Password',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  // Glowing logo/icon above the card
                  CircularAvatarWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
