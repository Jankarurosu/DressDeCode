import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contáctanos'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'DRESSDECODE',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 48.0),
            Center(
              child: Column(
                children: [
                  Icon(
                    CupertinoIcons.mail,
                    size: 50,
                    color: Colors.pink,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Correo electrónico:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'contacto@ejemplo.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 48.0),
            Center(
              child: Column(
                children: [
                  Icon(
                    CupertinoIcons.phone,
                    size: 50,
                    color: Colors.pink,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Teléfono:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '+51 999-888-777',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 48.0),
            Center(
              child: Column(
                children: [
                  Icon(
                    CupertinoIcons.location,
                    size: 50,
                    color: Colors.pink,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Ubicación:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Perú, Ciudad, Calle Principal',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
