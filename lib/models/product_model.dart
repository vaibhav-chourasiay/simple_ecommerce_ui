import 'package:flutter/material.dart';

class Product {
  final int? id, price;
  final String? title, describtion;
  final String? image;
  final Color color;

  Product(
      {this.id,
      this.price,
      this.title,
      this.describtion,
      this.image,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      price: 273,
      title: "Small Bag",
      describtion: "it is a good nice looking and cheap bag that you afored",
      color: Colors.blue[800]!,
      image: "assets/images/bag_1.png"),
  Product(
      id: 2,
      price: 203,
      title: "Small Bag",
      describtion: "it is a good nice looking and cheap bag that you afored",
      color: Colors.brown,
      image: "assets/images/bag_2.png"),
  Product(
      id: 3,
      price: 293,
      title: "Small Bag",
      describtion: "it is a good nice looking and cheap bag that you afored",
      color: Colors.black,
      image: "assets/images/bag_3.png"),
  Product(
      id: 4,
      price: 773,
      title: "Small Bag",
      describtion: "it is a good nice looking and cheap bag that you afored",
      color: Colors.orange[400]!,
      image: "assets/images/bag_4.png"),
  Product(
      id: 5,
      price: 073,
      title: "Small Bag",
      describtion: "it is a good nice looking and cheap bag that you afored",
      color: Colors.pinkAccent,
      image: "assets/images/bag_5.png"),
  Product(
      id: 6,
      price: 473,
      title: "Small Bag",
      describtion: "it is a good nice looking and cheap bag that you afored",
      color: Colors.black87,
      image: "assets/images/bag_6.png"),
];
