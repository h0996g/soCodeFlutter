import 'package:flutter/material.dart';

class ExpandedFlexible extends StatelessWidget {
  const ExpandedFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded & Flexible')),
      body: Column(
        children: [
          Flexible(child: Container(color: Colors.red, height: 200)),
          Flexible(child: Container(color: Colors.yellow, height: 200)),
        ],
      ),
    );
  }
}
