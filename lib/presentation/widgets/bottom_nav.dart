import 'package:cinemagate/presentation/screens/category/category.dart';
import 'package:cinemagate/presentation/screens/create/create.dart';
import 'package:cinemagate/presentation/screens/home/home.dart';
import 'package:cinemagate/presentation/screens/profile/profile.dart';
import 'package:cinemagate/presentation/screens/search/search.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const Home(),
    const Search(),
    const Category(),
    const Create(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          index: selectedIndex,
          backgroundColor: Colors.black,
          onTap: _onItemTapped,
          items: [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.movie_creation_outlined),
            Icon(Icons.add),
            Icon(Icons.person),
          ]),
    );
  }
}
