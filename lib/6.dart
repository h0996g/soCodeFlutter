import 'package:flutter/material.dart';
import 'dart:ui';

class AppColors {
  static const Color first = Color.fromARGB(255, 0, 213, 116);
  static const Color second = Color.fromARGB(255, 0, 112, 85);
  static const Color third = Color.fromARGB(255, 0, 65, 80);
}

class AdvancedLoginPage extends StatelessWidget {
  const AdvancedLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Gradient background
      body: Stack(
        children: [
          // Gradient layer
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.third, AppColors.second, AppColors.first],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Decorative circles
          Positioned(
            top: -70,
            left: -70,
            child: Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.first.withOpacity(0.12),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            right: -60,
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.first.withOpacity(0.17),
              ),
            ),
          ),
          Positioned(
            bottom: -40,
            left: -50,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.second.withOpacity(0.11),
              ),
            ),
          ),

          // Center login card with blur (glass-morphism)
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Glassmorphic login card
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 36),
                    decoration: BoxDecoration(
                      color: AppColors.second.withOpacity(0.69),
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.third.withOpacity(0.20),
                          blurRadius: 24,
                          offset: Offset(0, 12),
                        ),
                      ],
                      border: Border.all(
                        color: AppColors.first.withOpacity(0.08),
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
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: AppColors.first,
                              fontWeight: FontWeight.w600,
                            ),
                            filled: true,
                            fillColor: AppColors.third.withOpacity(0.13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.first,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 18),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: AppColors.first,
                              fontWeight: FontWeight.w600,
                            ),
                            filled: true,
                            fillColor: AppColors.third.withOpacity(0.13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.first,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                        ),
                        SizedBox(height: 28),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppColors.first,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.first.withOpacity(0.15),
                                blurRadius: 16,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: AppColors.third,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Forgot password?",
                          style: TextStyle(color: Colors.white54, fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  // Glowing logo/icon above the card
                  Positioned(
                    top: -59,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.first.withOpacity(0.38),
                            blurRadius: 40,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 49,
                        backgroundColor: AppColors.third,
                        child: Icon(
                          Icons.lock_rounded,
                          color: AppColors.first,
                          size: 49,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
