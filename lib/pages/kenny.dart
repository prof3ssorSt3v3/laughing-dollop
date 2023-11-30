import 'package:flutter/material.dart';

class KennyPage extends StatefulWidget {
  KennyPage({super.key, required this.navBar});

  Function navBar;

  @override
  State<KennyPage> createState() => _KennyPageState();
}

class _KennyPageState extends State<KennyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kenny')),
      body: const Center(
        child: Text('KENNY'),
      ),
      bottomNavigationBar: widget.navBar(context),
    );
  }
}
