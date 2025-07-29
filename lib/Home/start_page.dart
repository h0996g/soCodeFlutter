import 'package:flutter/material.dart';

class AppColors {
  static const Color first = Color.fromARGB(255, 0, 213, 116);
  static const Color second = Color.fromARGB(255, 0, 112, 85);
  static const Color third = Color.fromARGB(255, 0, 65, 80);
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _selectedIndex = 0;

  List<String> _titles = ['Home', 'Add', 'Profile'];

  static const List<Widget> _pages = [
    Center(
      child: Text('Welcome to the Home Page!', style: TextStyle(fontSize: 18)),
    ),
    Center(
      child: Text('Welcome to the Add Page!', style: TextStyle(fontSize: 18)),
    ),
    Center(
      child: Text(
        'Welcome to the Profile Page!',
        style: TextStyle(fontSize: 18),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('Selected index: $index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu button tap
            print('Menu tapped');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Navigate to settings page
              print('Settings tapped');
            },
          ),
        ],
        title: Text(
          _titles[_selectedIndex],
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.third,
        foregroundColor: Colors.white,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.third,
        selectedItemColor: AppColors.first,
        unselectedItemColor: Colors.white70,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
