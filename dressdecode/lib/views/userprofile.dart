import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de usuario'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Nombre'),
            subtitle: Text('Rosa'),
          ),
          ListTile(
            title: Text('Correo Electronico'),
            subtitle: Text('rosa@certus.edu.pe'),
          ),
          ListTile(
            title: Text('Telefono'),
            subtitle: Text('+51 123456789'),
          ),
          ListTile(
            title: Text('Dirección'),
            subtitle: Text('Av. 10 de junio 1005'),
          ),
          ListTile(
            title: Text('Red Social'),
            subtitle: Text('@rosa123'),
          ),
        ],
      ),
    );
  }
}
