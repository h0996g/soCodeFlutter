import 'package:flutter/material.dart';
import 'package:socode/Auth/Login/Views/login.dart';
import 'package:socode/Profile/Views/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage(), debugShowCheckedModeBanner: false);
  }
}
