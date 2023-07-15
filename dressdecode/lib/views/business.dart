import 'package:dressdecode/models/businessItemCardModel.dart';
import 'package:dressdecode/models/businessModel.dart';
import 'package:dressdecode/models/categoriesbusinessModel.dart';
import 'package:dressdecode/models/constantsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);
  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Negocios'),
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
                      title: Text('Buscar negocios'),
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
            SizedBox(width: kDefaultPaddin / 2),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CategoriesBusiness(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: GridView.builder(
                    itemCount: business.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) =>
                        ItemCard(key: UniqueKey(), business: business[index])),
              ),
            ),
          ],
        ));
  }
}
