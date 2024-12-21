import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wedsnap/pages/edit_page.dart';
import 'package:wedsnap/pages/favorite_page.dart';
import 'package:wedsnap/pages/home_page.dart';
import 'package:wedsnap/pages/user_account.dart';

class NavBar extends StatefulWidget {
    final int initialIndex;

  const NavBar({super.key,this.initialIndex = 0});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
    late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  final List<Widget> _pages = [
    HomePage(),
    FavoritePage(categoryName: 'theme',),
    EditPage(),
    UserAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 300),
        color: Theme.of(context).primaryColor,
        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.photo, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}