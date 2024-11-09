import 'package:flutter/material.dart';
import 'package:news_app/search.dart';
import 'package:news_app/settings.dart';
import 'package:news_app/home.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _selectedIndex = 0;

  final List<Widget> _pages =[
    const HomePage(),
    const SearchPage(),
    const SettingsPage(),
  ];

  void _onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
            ),
        ]
      ),
    );
  }
}