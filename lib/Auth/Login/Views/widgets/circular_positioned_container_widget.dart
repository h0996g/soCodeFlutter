import 'package:flutter/material.dart';
import 'package:socode/Other/colors.dart';

class CircularPositionedContainerWidget extends StatelessWidget {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final double? width;
  final double? height;
  final Color? color;

  const CircularPositionedContainerWidget({
    super.key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? AppColors.first.withValues(alpha: 0.12),
        ),
      ),
    );
  }
}
