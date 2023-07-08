import 'package:dressdecode/models/businessModel.dart';
import 'package:dressdecode/models/constantsModel.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Business business;
  const ItemCard({
    required Key key,
    required this.business,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: business.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${business.id}",
                child: Image.asset(business.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          ),
          Text(
            "${business.title}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
