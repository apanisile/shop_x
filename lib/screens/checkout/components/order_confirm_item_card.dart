//@dart=2.9
import 'package:flutter/material.dart';
import 'package:shop_x/models/Product.dart';

import 'package:shop_x/screens/home/size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    this.cartList,
    this.products,
  }) : super(key: key);

  final Product products;
  final Product cartList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(90.0),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(cartList.image),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cartList.title,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Row(
              children: [
                const SizedBox(height: 20),
                Text.rich(
                  TextSpan(
                    text: "\$${cartList.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: "x ${cartList.numOfItems}",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
