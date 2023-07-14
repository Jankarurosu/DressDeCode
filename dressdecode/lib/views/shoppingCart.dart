import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          CartItem(
            image: 'assets/images/products/ropa_1.png',
            name: 'Ropa 1',
            price: '99.99',
          ),
          CartItem(
            image: 'assets/images/products/ropa_2.png',
            name: 'Ropa 2',
            price: '149.99',
          ),
          CartItem(
            image: 'assets/images/products/ropa_3.png',
            name: 'Ropa 3',
            price: '129.99',
          ),
          CartItem(
            image: 'assets/images/products/ropa_4.png',
            name: 'Ropa 4',
            price: '129.99',
          ),
          CartItem(
            image: 'assets/images/products/ropa_5.png',
            name: 'Ropa 5',
            price: '100.99',
          ),
          CartItem(
            image: 'assets/images/products/ropa_6.png',
            name: 'Ropa 6',
            price: '122.99',
          ),
          SizedBox(height: 16.0),
          Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                // Lógica para realizar la compra
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Realizar compra',
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

class CartItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  CartItem({required this.image, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(230, 168, 215, 1.0),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  '\S/.$price',
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 4.0),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      // Lógica para reducir la cantidad
                    },
                  ),
                  Text(
                    '1', // Reemplazar por la cantidad actual
                    style: TextStyle(fontSize: 14.0),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      // Lógica para aumentar la cantidad
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
