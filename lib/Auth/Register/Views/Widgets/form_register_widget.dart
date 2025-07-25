import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:socode/Components/custom_button_widget.dart';
import 'package:socode/Components/custom_dropdown_widget.dart';
import 'package:socode/Components/text_field.dart';
import 'package:socode/Other/colors.dart';

class FormRegisterWidget extends StatefulWidget {
  const FormRegisterWidget({super.key});

  @override
  _FormRegisterWidgetState createState() => _FormRegisterWidgetState();
}

class _FormRegisterWidgetState extends State<FormRegisterWidget> {
  // Initial value of the dropdown
  String selectedUserType = 'Student'; // Default is Student

  // List of user types
  final List<String> userTypes = ['Student', 'Teacher'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 36, left: 26, right: 26),
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
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.arrow_back_ios_new, color: AppColors.first),
            ),
          ),
          Text(
            'Sign Up',
            style: TextStyle(
              color: AppColors.first,
              fontSize: 26,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.1,
            ),
          ),
          SizedBox(height: 7),
          Text(
            'Create a new account',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          SizedBox(height: 33),

          CustomTextFieldWidget(
            labelText: 'First Name',
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 20),

          CustomTextFieldWidget(
            labelText: 'Last Name',
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 20),

          CustomTextFieldWidget(
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),

          CustomTextFieldWidget(
            labelText: 'Age',
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 20),

          CustomTextFieldWidget(labelText: 'Password', isPassword: true),
          SizedBox(height: 20),

          CustomDropdownWidget(
            value: selectedUserType,
            items: userTypes,
            label: 'User Type',
            onChanged: (value) {
              setState(() {
                selectedUserType = value!;
              });
            },
          ),

          SizedBox(height: 32),

          CustomButtonWidget(buttonText: 'Sign Up', onPressed: () {}),
          SizedBox(height: 15),

          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: "Login",
                  style: TextStyle(
                    color: AppColors.first,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer:
                      TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
