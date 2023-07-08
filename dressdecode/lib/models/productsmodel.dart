import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Ropa_1",
      price: 234,
      size: 12,
      description: ExampleText,
      image: "assets/images/products/ropa_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Ropa_2",
      price: 234,
      size: 8,
      description: ExampleText,
      image: "assets/images/products/ropa_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Ropa_3",
      price: 234,
      size: 10,
      description: ExampleText,
      image: "assets/images/products/ropa_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Ropa_4",
      price: 234,
      size: 11,
      description: ExampleText,
      image: "assets/images/products/ropa_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Ropa_5",
      price: 234,
      size: 12,
      description: ExampleText,
      image: "assets/images/products/ropa_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Ropa_6",
    price: 234,
    size: 12,
    description: ExampleText,
    image: "assets/images/products/ropa_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String ExampleText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
