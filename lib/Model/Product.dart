import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category;
  final int id;
  final double price;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.category
  });


}