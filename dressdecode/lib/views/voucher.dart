import 'package:dressdecode/views/homepage.dart';
import 'package:flutter/material.dart';

class Voucher extends StatefulWidget {
  const Voucher({Key? key}) : super(key: key);
  @override
  _VoucherState createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comprobante de pago'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Nombre de la empresa', textAlign: TextAlign.center),
            subtitle: Text('DressDeCode', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Fecha y Hora', textAlign: TextAlign.center),
            subtitle: Text('11/11/11 11:11am', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Número de comprobante', textAlign: TextAlign.center),
            subtitle: Text('8888888888888888888', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Producto', textAlign: TextAlign.center),
            subtitle:
                Text('ropa_1, ropa_2, ropa_3', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Cantidad', textAlign: TextAlign.center),
            subtitle: Text('3', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Precio Unitario', textAlign: TextAlign.center),
            subtitle:
                Text('S/.100, S/.100, S/.100', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Subtotal', textAlign: TextAlign.center),
            subtitle: Text('S/.300', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Impuestos', textAlign: TextAlign.center),
            subtitle: Text('S/.5', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Total', textAlign: TextAlign.center),
            subtitle: Text('S/.305', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Método de pago', textAlign: TextAlign.center),
            subtitle: Text('S/.300', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text('Nombre del cliente', textAlign: TextAlign.center),
            subtitle: Text('Rosa', textAlign: TextAlign.center),
          ),
          ListTile(
            title: Text("Canal de atención", textAlign: TextAlign.center),
            subtitle: Text('+51 999 999 999', textAlign: TextAlign.center),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Aceptar',
                  style: TextStyle(
                    fontSize: 15, // Ajusta el tamaño del texto del botón aquí
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
