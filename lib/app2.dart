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
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/stan');
            },
            child: const Text('Stan'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/kenny');
            },
            child: const Text('Kenny'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/kyle');
            },
            child: const Text('Kyle'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cartman');
            },
            child: const Text('Cartman'),
          ),
        ],
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      Widget screen;
      switch (settings.name) {
        case '/stan':
          screen = StanPage(navBar: navBar);
          break;
        case '/kenny':
          screen = KennyPage(navBar: navBar);
          break;
        case '/kyle':
          screen = KylePage(navBar: navBar);
          break;
        case '/cartman':
          screen = CartmanPage(navBar: navBar);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange),
      ),
      initialRoute: "/stan",
      onGenerateRoute: _routes(),
    );
  }
}
