import 'package:flutter/material.dart';
import 'package:molly/screens/payment.dart';
import 'package:molly/screens/search.dart';
import 'package:molly/themes/custom_theme.dart';
import 'package:molly/widgets/login_bg.dart';
import 'package:molly/widgets/login_or_signup.dart';

import '../widgets/gmaps.dart';
import 'filter_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: '',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sort_sharp),
            label: '',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: '',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: CustomTheme.appColors.primaryColor,
        onTap: _onItemTapped,
      ),
      body: Column(
        children: [
          const Gmaps(),
          Container(
            height: 0,
            width: double.infinity,
            color: CustomTheme.appColors.primaryColor,
          )
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Search()),
      );
    }
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const FilterScreen()),
      );
    }
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Payment()),
      );
    }
  }
}
