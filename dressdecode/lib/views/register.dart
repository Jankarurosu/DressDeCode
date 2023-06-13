import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: Center(
        child: const Text(
          'Página de registro',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
