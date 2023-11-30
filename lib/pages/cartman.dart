import 'package:flutter/material.dart';

class CartmanPage extends StatefulWidget {
  CartmanPage({super.key, required this.navBar});

  Function navBar;

  @override
  State<CartmanPage> createState() => _CartmanPageState();
}

class _CartmanPageState extends State<CartmanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cartman')),
      body: const Center(
        child: Text('CARTMAN'),
      ),
      bottomNavigationBar: widget.navBar(context),
    );
  }
}
