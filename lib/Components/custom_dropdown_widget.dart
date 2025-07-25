import 'package:flutter/material.dart';
import 'package:socode/Other/colors.dart';

class CustomDropdownWidget extends StatelessWidget {
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String? label;

  const CustomDropdownWidget({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: AppColors.third,
      value: value,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.arrow_drop_down, color: AppColors.first),
        labelStyle: const TextStyle(
          color: AppColors.first,
          fontWeight: FontWeight.w600,
        ),
        filled: true,
        fillColor: AppColors.third.withValues(alpha: 0.13),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.first, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      items:
          items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(color: AppColors.first),
              ),
            );
          }).toList(),
    );
  }
}
