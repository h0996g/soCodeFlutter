import 'package:flutter/material.dart';
import 'package:socode/Other/colors.dart';

class GradientContainerWidget extends StatelessWidget {
  const GradientContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.third, AppColors.second, AppColors.first],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
