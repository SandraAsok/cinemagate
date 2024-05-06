import 'package:cinemagate/presentation/screens/category/category.dart';
import 'package:cinemagate/presentation/screens/create/create.dart';
import 'package:cinemagate/presentation/screens/home/home.dart';
import 'package:cinemagate/presentation/screens/profile/profile.dart';
import 'package:cinemagate/presentation/screens/search/search.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    Home(),
    Search(),
    Category(),
    Create(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: Colors.blue[200],
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_creation_outlined), label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Create'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
          ]),
    );
  }
}
