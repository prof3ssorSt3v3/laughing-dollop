import 'package:flutter/material.dart';
import 'package:navopts/pages/cartman.dart';
import 'package:navopts/pages/kenny.dart';
import 'package:navopts/pages/kyle.dart';
import 'package:navopts/pages/stan.dart';

//version 1 - Using intialRoute: "/" and routes: Map

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange),
      ),
      initialRoute: "/stan",
      routes: <String, WidgetBuilder>{
        "/stan": (BuildContext context) => StanPage(navBar: navBar),
        '/kenny': (BuildContext context) => KennyPage(navBar: navBar),
        '/kyle': (BuildContext context) => KylePage(navBar: navBar),
        '/cartman': (BuildContext context) => CartmanPage(navBar: navBar),
      },
    );
  }
}

/*
TextButton(
  child: const Text('POP'),
  onPressed: () {
    Navigator.pop(context);
    //go back one screen by popping the current one off the stack
    //can also be used to remove a modal dialog from the screen
  },
)

Navigator.push(context, PageRouteBuilder<void>(
  opaque: false,
  pageBuilder: (BuildContext context, _, __) {
    //function that builds the new screen contents to replace home:
    return const Center(child: Text('My PageRoute'));
  },
)
*/