import 'package:flutter/material.dart';
import 'package:socode/Auth/Login/Views/widgets/gradient_container_widget.dart';
import 'package:socode/Other/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String imageUrl = 'https://i.pravatar.cc/150?img=3';
    final String firstName = 'John';
    final String lastName = 'Doe';
    final int age = 25;
    final String email = 'john.doe@example.com';

    return Scaffold(
      body: Stack(
        children: [
          const GradientContainerWidget(), // background
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Image
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: AppColors.first.withValues(alpha: 0.2),
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  const SizedBox(height: 24),

                  // Info
                  _buildInfoRow('First Name', firstName),
                  _buildInfoRow('Last Name', lastName),
                  _buildInfoRow('Age', age.toString()),
                  _buildInfoRow('Email', email),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: AppColors.third.withValues(alpha: 0.13),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.first.withValues(alpha: 0.08),
                width: 1.5,
              ),
            ),
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
