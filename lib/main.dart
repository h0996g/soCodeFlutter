import 'package:flutter/material.dart';
import 'package:socode/Auth/Login/Views/login.dart';
import 'package:socode/Home/counter2.dart';
import 'package:socode/Home/start_page.dart';

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
