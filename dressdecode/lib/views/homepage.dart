import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Center(
        child: const Text(
          'Bienvenido a la página de inicio',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
