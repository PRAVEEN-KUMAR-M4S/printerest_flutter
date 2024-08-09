import 'package:flutter/material.dart';
import 'package:printerest_clone/screens/feeds_screen.dart';
import 'package:printerest_clone/screens/notification_screen.dart';
import 'package:printerest_clone/screens/post_screen.dart';
import 'package:printerest_clone/screens/profile/profile_screen.dart';
import 'package:printerest_clone/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List screens = [
    const FeedsScreen(),
    const SearchScreen(),
    const PostScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          selectedLabelStyle: const TextStyle(color: Colors.white),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: 'Create'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.messenger,
                  color: Colors.white,
                ),
                label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: 'Saved')
          ]),
      body: screens[_currentIndex],
    );
  }
}
