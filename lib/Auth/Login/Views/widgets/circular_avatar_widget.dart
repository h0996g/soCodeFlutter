import 'package:flutter/material.dart';
import 'package:socode/Other/colors.dart';

class CircularAvatarWidget extends StatelessWidget {
  const CircularAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -59,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.first.withValues(alpha: 0.38),
              blurRadius: 40,
              spreadRadius: 5,
            ),
          ],
        ),
        child: CircleAvatar(
          radius: 49,
          backgroundColor: AppColors.third,
          child: Icon(Icons.lock_rounded, color: AppColors.first, size: 49),
        ),
      ),
    );
  }
}
