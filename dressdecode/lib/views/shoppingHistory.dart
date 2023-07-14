import 'package:flutter/material.dart';

class ShoppingHistory extends StatefulWidget {
  const ShoppingHistory({Key? key}) : super(key: key);
  @override
  _ShoppingHistoryState createState() => _ShoppingHistoryState();
}

class _ShoppingHistoryState extends State<ShoppingHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de compras'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Fecha de compra:09/07/2023'),
            subtitle: Text('Camisa Marca:XXXX precio:"130soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:07/07/2023'),
            subtitle: Text('Falda Marca:XXXX precio:"50 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:30/06/2023'),
            subtitle: Text('Polo Marca:XXXX precio:"40 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:17/06/2023'),
            subtitle: Text('Camisa Negra Marca:XXX precio:"100 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:10/06/2023'),
            subtitle: Text('Pantalon Marron Marca:XXXX precio:"50 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:10/06/2023'),
            subtitle: Text('Pantalon Marron Marca:XXXX precio:"50 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:10/06/2023'),
            subtitle: Text('Pantalon Marron Marca:XXXX precio:"50 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:10/06/2023'),
            subtitle: Text('Pantalon Marron Marca:XXXX precio:"50 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:10/06/2023'),
            subtitle: Text('Pantalon Marron Marca:XXXX precio:"50 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:10/06/2023'),
            subtitle: Text('Pantalon Marron Marca:XXXX precio:"50 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:10/06/2023'),
            subtitle: Text('Pantalon Marron Marca:XXXX precio:"50 soles"'),
          ),
          ListTile(
            title: Text('Fecha de compra:10/06/2023'),
            subtitle: Text('Pantalon Marron Marca:XXXX precio:"50 soles"'),
          ),
        ],
      ),
    );
  }
}
