import 'package:flutter/material.dart';
import 'package:socode/Auth/Login/Views/widgets/circular_positioned_container_widget.dart';
import 'package:socode/Auth/Login/Views/widgets/gradient_container_widget.dart';
import 'package:socode/Auth/Register/Views/Widgets/form_register_widget.dart';
import 'package:socode/Other/colors.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,

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
          // Register Form
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: FormRegisterWidget(),
          ),
        ],
      ),
    );
  }
}
