//@dart=2.9
import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.description,
    this.price,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 23000,
      size: 41,
      description: dummyText,
      image: 'assets/images/bag_1.png',
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Office Code",
      price: 23000,
      size: 20,
      description: dummyText,
      image: 'assets/images/bag_2.png',
      color: Color(0xFFd082AE)),
  Product(
      id: 3,
      title: "Bag 3",
      price: 45500,
      size: 47,
      description: dummyText,
      image: 'assets/images/bag_3.png',
      color: Color(0xFFa582AE)),
  Product(
      id: 4,
      title: "Bag 4",
      price: 64000,
      size: 43,
      description: dummyText,
      image: 'assets/images/bag_4.png',
      color: Color(0xFFCD82AE)),
  Product(
      id: 5,
      title: "Bag 5",
      price: 35000,
      size: 48,
      description: dummyText,
      image: 'assets/images/bag_5.png',
      color: Color(0xFFD3A984)),
  Product(
      id: 6,
      title: "Bag 6",
      price: 37000,
      size: 41,
      description: dummyText,
      image: 'assets/images/bag_6.png',
      color: Color(0xFFD3A984)),
];

String dummyText = "This is the sample text for the products lkfkjan falkfc naslkjf lawekufhklnfs;dfnadjkf";
