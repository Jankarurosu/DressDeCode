import 'package:flutter/material.dart';

class Business {
  final String image, title, description;
  final int size, id;
  final Color color;
  Business({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Business> business = [
  Business(
      id: 1,
      title: "Negocio_1",
      size: 12,
      description: ExampleText,
      image: "assets/images/business/negocio_1.png",
      color: Color(0xFF3D82AE)),
  Business(
      id: 2,
      title: "Negocio_2",
      size: 8,
      description: ExampleText,
      image: "assets/images/business/negocio_2.png",
      color: Color(0xFFD3A984)),
  Business(
      id: 3,
      title: "Negocio_3",
      size: 10,
      description: ExampleText,
      image: "assets/images/business/negocio_3.png",
      color: Color(0xFF989493)),
  Business(
      id: 4,
      title: "Negocio_4",
      size: 11,
      description: ExampleText,
      image: "assets/images/business/negocio_4.png",
      color: Color(0xFFE6B398)),
  Business(
      id: 5,
      title: "Negocio_5",
      size: 12,
      description: ExampleText,
      image: "assets/images/business/negocio_5.png",
      color: Color(0xFFFB7883)),
  Business(
    id: 6,
    title: "Negocio_6",
    size: 12,
    description: ExampleText,
    image: "assets/images/business/negocio_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String ExampleText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
