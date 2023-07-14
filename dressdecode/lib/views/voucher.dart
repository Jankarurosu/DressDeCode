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
            title: Text('Nombre de la empresa'),
            subtitle: Text('DressDeCode'),
          ),
          ListTile(
            title: Text('Fecha y Hora'),
            subtitle: Text('11/11/11 11:11am'),
          ),
          ListTile(
            title: Text('Número de comprobante'),
            subtitle: Text('8888888888888888888'),
          ),
          ListTile(
            title: Text('Producto'),
            subtitle: Text('ropa_1, ropa_2, ropa_3'),
          ),
          ListTile(
            title: Text('Cantidad'),
            subtitle: Text('3'),
          ),
          ListTile(
            title: Text('Precio Unitario'),
            subtitle: Text('S/.100, S/.100, S/.100'),
          ),
          ListTile(
            title: Text('Subtotal'),
            subtitle: Text('S/.300'),
          ),
          ListTile(
            title: Text('Impuestos'),
            subtitle: Text('S/.5'),
          ),
          ListTile(
            title: Text('Total'),
            subtitle: Text('S/.305'),
          ),
          ListTile(
            title: Text('Método de pago'),
            subtitle: Text('S/.300'),
          ),
          ListTile(
            title: Text('Nombre del cliente'),
            subtitle: Text('Rosa'),
          ),
          ListTile(
            title: Text("Canal de atención"),
            subtitle: Text('+51 999 999 999'),
          ),
          SizedBox(height: 16.0),
          Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Aceptar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
