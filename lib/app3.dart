import 'package:flutter/material.dart';
import 'package:navopts/pages/cartman.dart';
import 'package:navopts/pages/kenny.dart';
import 'package:navopts/pages/kyle.dart';
import 'package:navopts/pages/stan.dart';

//version 2 - Using RouteFactory

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget navBar(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.person), label: 'Stan'),
        NavigationDestination(icon: Icon(Icons.person_2), label: 'Kenny'),
        NavigationDestination(icon: Icon(Icons.person_3), label: 'Kyle'),
        NavigationDestination(icon: Icon(Icons.person_4), label: 'Cartman'),
      ],
      selectedIndex: currentPage,
      onDestinationSelected: (int idx) {
        setState(() {
          currentPage = idx;
        });
      },
    );
  }

  int currentPage = 0;

  Widget pickPage() {
    switch (currentPage) {
      case 0:
        return StanPage(navBar: navBar);
      case 1:
        return KennyPage(navBar: navBar);
      case 2:
        return KylePage(navBar: navBar);
      case 3:
        return CartmanPage(navBar: navBar);
      default:
        throw Exception('They killed Kenny.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange),
        ),
        home: pickPage());
  }
}
