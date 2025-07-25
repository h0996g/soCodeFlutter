import 'package:flutter/material.dart';
import 'package:socode/Auth/Login/Views/widgets/circular_avatar_widget.dart';
import 'package:socode/Auth/Login/Views/widgets/circular_positioned_container_widget.dart';
import 'package:socode/Auth/Login/Views/widgets/form_widget.dart';
import 'package:socode/Auth/Login/Views/widgets/gradient_container_widget.dart';

import 'package:socode/Other/colors.dart';

class AdvancedLoginPage extends StatelessWidget {
  const AdvancedLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Gradient background
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

          // Center login card with blur (glass-morphism)
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  //Form
                  CustomFormContainerWidget(),
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
