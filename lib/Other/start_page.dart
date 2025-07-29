import 'package:flutter/material.dart';
import 'package:socode/Other/1.dart';
import 'package:socode/Other/2.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _currentIndex = 0;
  List<Widget> pages = [MySimpleApp(), ExpandedOnlyExample()];
  List<String> titles = ['My Simple App', 'Expanded Only Example'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text(titles[_currentIndex])),
      body: pages[_currentIndex],
    );
  }
}
