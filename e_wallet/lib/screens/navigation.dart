import 'package:e_wallet/model/pages.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(microseconds: 10),
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        indicatorColor: Colors.white,
        selectedIndex: currentIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled, color: Colors.black),
            label: "",
            selectedIcon: Icon(Icons.home_filled, color: Color(0xFF105D38)),
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_outlined, color: Colors.black),
            label: "",
            selectedIcon: Icon(
              Icons.bar_chart_outlined,
              color: Color(0xFF105D38),
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_outlined, color: Colors.black),
            label: "",
            selectedIcon: Icon(
              Icons.notifications_outlined,
              color: Color(0xFF105D38),
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline, color: Colors.black),
            label: "",
            selectedIcon: Icon(Icons.person_outline, color: Color(0xFF105D38)),
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
