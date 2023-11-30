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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('Stan'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Kenny'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Kyle'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Cartman'),
        ),
      ],
    );
  }
}
