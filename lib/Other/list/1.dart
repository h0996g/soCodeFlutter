import 'package:flutter/material.dart';

class StaticMessengerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Horizontal scroll for "stories"
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey[200],
                      ),
                      child: Center(child: Text('S$index')),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Centered static message cards
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(16),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text('Message $index'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
