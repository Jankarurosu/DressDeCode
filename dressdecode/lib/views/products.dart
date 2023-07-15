import 'package:dressdecode/models/categoriesModel.dart';
import 'package:dressdecode/models/constantsModel.dart';
import 'package:dressdecode/models/productsItemCardModel.dart';
import 'package:dressdecode/models/productsmodel.dart';
import 'package:dressdecode/views/shoppingCart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Productos'),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                CupertinoIcons.search,
                color: Colors.white,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Buscar productos'),
                      content: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          hintText: 'Ingrese su consulta de búsqueda',
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Cancelar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text('Buscar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingCart()),
                );
              },
            ),
            SizedBox(width: kDefaultPaddin / 2),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Categories(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) =>
                        ItemCard(key: UniqueKey(), product: products[index])),
              ),
            ),
          ],
        ));
  }
}
