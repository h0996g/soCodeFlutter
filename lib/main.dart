// main.dart

import 'package:flutter/material.dart';
import 'package:socode/1.dart';
import 'package:socode/2.dart';
import 'package:socode/3.dart';
import 'package:socode/4.dart';
import 'package:socode/5.dart';
import 'package:socode/6.dart';

void main() {
  runApp(MyApp());
}

// Root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdvancedLoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
