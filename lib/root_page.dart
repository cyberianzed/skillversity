import 'package:abibas/screens/profile_screen.dart';
import 'package:abibas/screens/feed_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page_list[_currentIndex],
      backgroundColor: Colors.grey[800],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        enableFeedback: false,
        selectedItemColor: Colors.green,
        //type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
            ),
            label: "",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// ignore: non_constant_identifier_names
final page_list = [const HomeScreen(), const HomeTab(), const ProfileScreen()];
