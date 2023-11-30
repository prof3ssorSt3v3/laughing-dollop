import 'package:flutter/material.dart';

class StanPage extends StatefulWidget {
  StanPage({super.key, required this.navBar});

  Function navBar;

  @override
  State<StanPage> createState() => _StanPageState();
}

class _StanPageState extends State<StanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stan')),
      body: const Center(
        child: Text('STAN'),
      ),
      bottomNavigationBar: widget.navBar(context),
    );
  }
}
