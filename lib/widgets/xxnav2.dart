import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Stan'),
        NavigationDestination(icon: Icon(Icons.home), label: 'Kenny'),
        NavigationDestination(icon: Icon(Icons.home), label: 'Kyle'),
        NavigationDestination(icon: Icon(Icons.home), label: 'Cartman'),
      ],
      selectedIndex: currentPage,
      onDestinationSelected: (int page) {},
    );
  }
}
