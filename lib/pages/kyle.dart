import 'package:flutter/material.dart';

class KylePage extends StatefulWidget {
  KylePage({super.key, required this.navBar});

  Function navBar;

  @override
  State<KylePage> createState() => _KylePageState();
}

class _KylePageState extends State<KylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kyle')),
      body: const Center(
        child: Text('KYLE'),
      ),
      bottomNavigationBar: widget.navBar(context),
    );
  }
}
