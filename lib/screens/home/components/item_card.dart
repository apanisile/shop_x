//@dart=2.9
import 'package:flutter/material.dart';
import 'package:shop_x/constants.dart';
import 'package:shop_x/models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product products;
  final Function press;
  const ItemCard({
    Key key,
    this.products,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: products.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero( tag: "${products.id}",child: Image.asset(products.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              products.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${products.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
