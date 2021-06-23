//@dart=2.9
import 'package:flutter/material.dart';
import 'package:shop_x/models/Product.dart';
import 'package:shop_x/screens/home/size_config.dart';

import '../../../constants.dart';

class CartItemCard extends StatelessWidget {

  const CartItemCard({
    Key key,
    this.products,
  }) : super(key: key);

  final Product products;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88.0),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(products.image),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              products.title,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text.rich(TextSpan(
                text: "\$${products.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
                children: [
                  TextSpan(
                      text: " x${products.numOfItems}",
                      style: TextStyle(color: kTextColor))
                ]))
          ],
        )
      ],
    );
  }
}
